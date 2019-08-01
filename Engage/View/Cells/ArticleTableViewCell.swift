//
//  ArticleTableViewCell.swift
//  Engage
//
//  Created by Keenan Cookson on 2019/07/24.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell, ArticleImageDelegate {
    // MARK: - Properties
    // UI Properties
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    
    let imageService = ImageService()
    var cellImage = UIImage(named: "PlaceholderImage")
    
    let imageCache = NSCache<NSString, UIImage>()
    
    //MARK: - Functions
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageService.delegate = self
        cellImageView.image = UIImage(named: "PlaceholderImage")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    /// Populates the UI elements.
    ///
    /// - Parameter viewModel: An object of type ArticleListItemViewModel, which will be used to populate the UI elements of the tableViewCell.
    func configure(with viewModel: ArticleListItemViewModel) {
//        if let imageURLString = viewModel.urlToImage {
//            imageService.getImage(imageURLString: imageURLString)
//        } else {
//            cellImageView.image = UIImage(named: "PlaceholderImage")
//        }
        imageService.getImage(imageURLString: viewModel.urlToImage)
        
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
    
    func setImage(with image: UIImage) {
        self.cellImageView.image = image
    }
}
