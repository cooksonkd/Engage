//
//  Article.swift
//  Engage
//
//  Created by Keenan Cookson on 2019/07/24.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import Foundation

struct Article {
    let source: Source?
    let author,
        title,
        description,
        urlToImage,
        publishedAt,
        content: String?
}
