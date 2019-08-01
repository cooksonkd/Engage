//
//  NetworkService.swift
//  Engage
//
//  Created by Keenan Cookson on 2019/07/25.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import Foundation

class NetworkRequest {    
    /// Sends a GET request to the specified URL.
    ///
    /// - Parameters:
    ///   - url: URL of API.
    ///   - completionHandler: A closure that handles the result of the network request.
    class func fetchRequest(url: URL, completionHandler: @escaping (Data?, Error?) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                completionHandler(data, nil)
            } else {
                completionHandler(nil, error)
            }
        }
        task.resume()
    }
}
