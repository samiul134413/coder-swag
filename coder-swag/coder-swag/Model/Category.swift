//
//  Category.swift
//  coder-swag
//
//  Created by Samiul Haque on 16/7/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import Foundation
struct Category
{
    private(set) public var title : String
    private(set) public var imageName : String
    init(title:String , imageName:String)
    {
        self.title = title
        self.imageName = imageName
    }
    
}
