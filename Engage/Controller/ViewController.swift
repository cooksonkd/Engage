//
//  ViewController.swift
//  Engage
//
//  Created by Keenan Cookson on 2019/07/23.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ArticleTableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    let dataService = DataService()
    
    var listViewModelArray = [ArticleListItemViewModel]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataService.delegate = self
        dataService.setViewModels()
    }

    func setViewModels(with viewModels: [ArticleListItemViewModel]) {
        self.listViewModelArray = viewModels
    }
}

// MARK: - Table View Data Source
extension ViewController: UITableViewDataSource {
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
extension ViewController: UITableViewDelegate { }
