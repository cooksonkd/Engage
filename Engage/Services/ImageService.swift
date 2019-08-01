//
//  ImageService.swift
//  Engage
//
//  Created by Keenan Cookson on 2019/07/26.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import Foundation
import UIKit

protocol ArticleImageDelegate {
    func setImage(with image: UIImage)
}

class ImageService {
    var delegate: ArticleImageDelegate?
    var imageURL: String?
    let imageCache = NSCache<NSString, UIImage>()
    
    /// Sends a request to the API to retrieve the article Image.
    ///
    /// - Parameter imageURLString: A String containing the URL needed to retrieve the image from the API.
    func getImage(imageURLString: String?) {
        self.imageURL = imageURLString
        if imageURLString == nil || imageURLString?.hasPrefix("http://") ?? true {
            if let placeholderImage = UIImage(named: "PlaceholderImage") {
                DispatchQueue.main.async {
                    self.delegate?.setImage(with: placeholderImage)
                }
            }
        } else {
            if let image = self.imageCache.object(forKey: imageURLString! as NSString)  {
                DispatchQueue.main.async {
                    self.delegate?.setImage(with: image)
                }
            } else {
                if let urlString = imageURLString, let imageURL = URL(string: urlString) {
                    NetworkRequest.fetchRequest(url: imageURL, completionHandler: setImageOfImageView(data:error:))
                }
            }
        }
    }
    
    /// Sets the image property of the cell ImageView.
    ///
    /// - Parameters:
    ///   - data: The raw data returned from the network request.
    ///   - error: An error returned by the network request.
    private func setImageOfImageView(data: Data?, error: Error?) {
        if let data = data {
            if let image = UIImage(data: data), let imageURL = self.imageURL {
                self.imageCache.setObject(image, forKey: imageURL as NSString)
                DispatchQueue.main.async {
                    self.delegate?.setImage(with: image)
                }
            }
        }
    }
}
