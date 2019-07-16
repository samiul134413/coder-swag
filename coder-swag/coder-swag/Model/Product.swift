//
//  Product.swift
//  coder-swag
//
//  Created by Samiul Haque on 17/7/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import Foundation
struct Product
{
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    init(title:String,price:String,imageName:String) {
        self.title = title
        self.imageName = imageName
        self.price = price
    }
}
