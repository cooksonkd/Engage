//
//  ArticleTableViewCell.swift
//  Engage
//
//  Created by Keenan Cookson on 2019/07/24.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    
    var cellImage = UIImage(named: "PlaceholderImage")
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with viewModel: ArticleListItemViewModel) {
        if let image = viewModel.urlToImage {
            if let imageURL = URL(string: image) {
                fetchImageFromAPI(using: imageURL)
                
            }
        } else {
            cellImageView.image = UIImage(named: "PlaceholderImage")
        }
        if let title = viewModel.title {
            titleLabel.text = title
        }
        if let description = viewModel.description {
            descriptionLabel.text = description
        }
        if let date = viewModel.formattedDate {
            dateLabel.text = date
        }
        if let source = viewModel.source?.name {
            sourceLabel.text = source
        }
    }
    
    func fetchImageFromAPI(using imageURL: URL) {
        var image: UIImage?
        let task = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
            if let data = data {
                let downloadedImage = UIImage(data: data)
                DispatchQueue.main.async {
                    self.cellImageView.image = downloadedImage
                }
            }
        }
        task.resume()
    }

}
