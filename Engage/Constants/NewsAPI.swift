//
//  NewsAPI.swift
//  Engage
//
//  Created by Keenan Cookson on 2019/07/24.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import Foundation

protocol ParameterValue { }

struct NewsAPI {
    static let host = "newsapi.org"
    static let path = "/v2/top-headlines"
    static let scheme = "https"
    static let apiKeyKey = "apiKey"
    static let apiKeyValue = "0e18fe09898b4c638a04cb943c9d9d1e"
    
    enum ParameterKey: String {
        case country = "country"
    }
    
    enum Country: String, ParameterValue {
        case southAfrica = "za"
        case unitedStates = "us"
    }
    
    static func url(parameterKey: ParameterKey, parameterValue: Country) -> URL? {
        var urlComponents = URLComponents()
        urlComponents.scheme = self.scheme
        urlComponents.host = self.host
        urlComponents.path = self.path
        urlComponents.queryItems = [URLQueryItem(name: parameterKey.rawValue, value: parameterValue.rawValue), URLQueryItem(name: apiKeyKey, value: apiKeyValue)]
        return urlComponents.url
    }
}
