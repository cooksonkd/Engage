//
//  ViewController.swift
//  Engage
//
//  Created by Keenan Cookson on 2019/07/23.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import UIKit

class TopHeadlinesViewControler: UIViewController, ArticleTableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    let articleService = ArticleService(parameterKey: .country, parameterValue: .southAfrica)
    
    var listViewModelArray = [ArticleListItemViewModel]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let url = NewsAPI.url(parameterKey: .country, parameterValue: .southAfrica) {
            NetworkRequest.fetchRequest(url: url, completionHandler: decodeJSONFromAPI(data:error:))
            print(url)
        }
    }
    
    private func decodeJSONFromAPI(data: Data?, error: Error?) {
        if let data = data {
            let apiResponse = try? JSONDecoder().decode(APIResponse.self, from: data)
            if let viewModelArray = apiResponse?.articles.compactMap(ArticleListItemViewModel.init) {
                DispatchQueue.main.async {
                    self.setViewModels(with: viewModelArray)
                }
            }
        }
    }
    
    func setViewModels(with viewModels: [ArticleListItemViewModel]) {
        self.listViewModelArray = viewModels
    }
}

// MARK: - Table View Data Source
extension TopHeadlinesViewControler: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listViewModelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleListItem", for: indexPath) as! ArticleTableViewCell
        let articleViewModel = listViewModelArray[indexPath.row]
        cell.configure(with: articleViewModel)
        return cell
    }
}

// MARK: - Table View Delegate
extension TopHeadlinesViewControler: UITableViewDelegate { }
