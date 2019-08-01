//
//  DataManager.swift
//  Engage
//
//  Created by Keenan Cookson on 2019/07/24.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    private var articles = [Article]()
    
    private init() {
        buildArticlesArray()
    }
    
    private func buildArticlesArray() {
//        articles.append(Article(source: Source(id: "cnn",
//                                               name: "CNN"),
//                                author: "Rebekah Riess and Hollie Silverman, CNN",
//                                title: "Neil Armstrong's family was paid $6 million by a hospital in a wrongful death settlement - CNN",
//                                articleDescription: "The family of astronaut Neil Armstrong was paid $6 million by a hospital as part of a wrongful death settlement, according to a report from The New York Times.",
//                                urlToImage: "https://cdn.cnn.com/cnnnext/dam/assets/190225113558-apollo-11-neil-armstrong-super-tease.jpg",
//                                publishedAt: "2019-07-24T06:50:00Z",
//                                content: nil))
//
//        articles.append(Article(source: Source(id: nil,
//                                               name: "Ndtv.com"),
//                                author: nil,
//                                title: "40 Terror Groups Operated, Pak Governments Didn't Tell Truth : Imran Khan - NDTV News",
//                                articleDescription: "Successive governments in Pakistan did not tell the truth to the United States, in particular in the last 15 years, Pakistani Prime Minister Imran Khan said on Tuesday, adding that there were 40 different terror groups operating in his country.",
//                                urlToImage: "https://c.ndtvimg.com/2019-04/e6v5p7_imran-khan-germany-japan-border_625x300_23_April_19.jpg",
//                                publishedAt: "2019-07-24T06:50:00Z",
//                                content: nil))
//
//        articles.append(Article(source: Source(id: "engadget",
//                                               name: "Engadget"),
//                                author: "Mariella Moon",
//                                title: "Report: Nintendo will repair Switch Joy-Cons with 'drift' issue for free - Engadget",
//                                articleDescription: "Nintendo reportedly told customer support reps to offer free Joy-Con repairs and to issue refunds for previous repairs.",
//                                urlToImage: "https://o.aolcdn.com/images/dims?thumbnail=1200%2C630&quality=80&image_uri=https%3A%2F%2Fo.aolcdn.com%2Fimages%2Fdims%3Fcrop%3D5000%252C3113%252C0%252C127%26quality%3D85%26format%3Djpg%26resize%3D1600%252C996%26image_uri%3Dhttps%253A%252F%252Fs.yimg.com%252Fos%252Fcreatr-images%252F2019-01%252Fc52e7710-1ea3-11e9-9f59-79c910065774%26client%3Da1acac3e1b3290917d92%26signature%3D4af67bb50e87badcf0e3b76c67b91192619e8ac7&client=amp-blogside-v2&signature=a3b58efacf1be650e27f632328ddb66f6eb6e37e",
//                                publishedAt: "2019-07-24T06:20:49Z",
//                                content: nil))
//
//        articles.append(Article(source: Source(id: "fox-news",
//                                               name: "Fox News"),
//                                author: "Talia Kaplan",
//                                title: "Embattled Puerto Rico Gov. Ricardo Rosselló wants conversation with Trump - Fox News",
//                                articleDescription: "Embattled Puerto Rico Gov. Ricardo Rosselló told Fox News on Tuesday that he wants a conversation with President Trump, saying he disagreed with Trump’s claim that he is a “terrible governor.”",
//                                urlToImage: nil,
//                                publishedAt: "2019-07-23T21:50:46Z",
//                                content: nil))
    }
    
    func getArticleArray() -> [Article] {
        return self.articles
    }
}
