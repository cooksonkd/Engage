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

class ArticleService {
    var delegate: ArticleTableViewDelegate?
    var articleViewModelArray: [ArticleListItemViewModel]?
    var parameterKey: NewsAPI.ParameterKey
    var parameterValue: NewsAPI.Country

    init(parameterKey: NewsAPI.ParameterKey, parameterValue: NewsAPI.Country) {
        self.parameterKey = parameterKey
        self.parameterValue = parameterValue
    }
    
    // TODO: Refactor TopHeadlinesViewController and move network requests to this file
}
