//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Samiul Haque on 17/7/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    
    
    private(set) public var products = [Product]()
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self
        
    }
    
    func initProducts(category: Category)
    {
        self.products = DataService.instance.getProducts(forCategoryTitle: category.title)
        
        //Initializing view title as product name
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell
        {
            let product = products[indexPath.row]
            cell.updateProductViews(product: product)
            return cell
        }
        else{
            return ProductCell()
        }
    }

    

}
