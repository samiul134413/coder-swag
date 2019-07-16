//
//  ProductCell.swift
//  coder-swag
//
//  Created by Samiul Haque on 17/7/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productTitle : UILabel!
    @IBOutlet weak var productPrice : UILabel!
    
    func updateProductViews(product : Product)
    {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
