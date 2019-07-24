//
//  DataService.swift
//  Engage
//
//  Created by Keenan Cookson on 2019/07/24.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import Foundation

protocol ArticleTableViewDelegate {
    func setViewModels(with viewModels: [ArticleListItemViewModel])
}

class DataService {
    var delegate: ArticleTableViewDelegate?
    
    let dataManager = DataManager.shared
    
    var articleViewModelArray: [ArticleListItemViewModel]?
    
    func setViewModels() {
        articleViewModelArray = dataManager.getArticleArray().compactMap(ArticleListItemViewModel.init)
        if let viewModelArray = articleViewModelArray{
            delegate?.setViewModels(with: viewModelArray)            
        }
    }
}
