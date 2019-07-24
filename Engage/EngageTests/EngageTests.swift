//
//  EngageTests.swift
//  EngageTests
//
//  Created by Keenan Cookson on 2019/07/23.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import XCTest
@testable import Engage

class EngageTests: XCTestCase {
    let article = Article(source: nil, author: nil, title: nil, description: nil, urlToImage: nil, publishedAt: "2019-07-24T06:50:00Z", content: nil)
    var articleListItemViewModel: ArticleListItemViewModel?

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.articleListItemViewModel = ArticleListItemViewModel(article: article)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testFormattedDate(){
        print("\(self.articleListItemViewModel?.formatDate(dateString: article.publishedAt))")
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
