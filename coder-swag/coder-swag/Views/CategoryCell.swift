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
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
