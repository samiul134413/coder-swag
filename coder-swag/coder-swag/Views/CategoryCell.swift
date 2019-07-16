//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Samiul Haque on 16/7/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
  
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!
    
    func updateCategoryViews(category: Category)
    {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
