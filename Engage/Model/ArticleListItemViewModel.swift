//
//  articleListItemViewModel.swift
//  Engage
//
//  Created by Keenan Cookson on 2019/07/24.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import Foundation

struct ArticleListItemViewModel {
    let source: Source?
    let title,
        description,
        urlToImage: String?
    var formattedDate: String?
}

extension ArticleListItemViewModel {
    init(article: Article) {
        self.source = article.source
        self.title = article.title
        self.description = article.description
        self.urlToImage = article.urlToImage
        if let date = article.publishedAt {
            self.formattedDate = self.formatDate(dateString: date)
        }
    }
    
    private func formatDate(dateString: String) -> String? {
        let dateFormatter = ISO8601DateFormatter()
        dateFormatter.formatOptions = .withFullDate
        if let date = dateFormatter.date(from: dateString) {
            return dateFormatter.string(from: date)
        } else {
            return nil
        }
    }
}
