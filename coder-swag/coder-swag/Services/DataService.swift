//
//  DataService.swift
//  coder-swag
//
//  Created by Samiul Haque on 16/7/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import Foundation
class DataService
{
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes logo Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes logo Black hat", price: "$15", imageName: "hat02.png"),
        Product(title: "Devslopes logo White hat", price: "$20", imageName: "hat03.png"),
        Product(title: "Devslopes logo Snapback", price: "$21", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes logo Grey hoodie", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes logo Red hoodie", price: "$30", imageName: "hoodie02.png"),
        Product(title: "Devslopes Grey hoodie", price: "$33", imageName: "hoodie03.png"),
        Product(title: "Devslopes Black hoodie", price: "$31", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes logo Black shirt", price: "$25", imageName: "shirt01.png"),
        Product(title: "Devslopes logo Grey shirt", price: "$25", imageName: "shirt02.png"),
        Product(title: "Devslopes logo Red shirt", price: "$25", imageName: "shirt03.png"),
        Product(title: "Devslopes Grey shirt", price: "$26", imageName: "shirt04.png"),
        Product(title: "Devslopes Black shirt", price: "$26", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category]
    {
        return categories
    }
    func getProducts(forCategoryTitle title:String) -> [Product]
    {
        switch title {
        case "SHIRTS":
            return shirts
        case "HOODIES":
            return hoodies
        case "HATS":
            return hats
        case "DIGITAL":
            return digitalGoods
        default:
            return [Product]()
            
        }
    }
}
