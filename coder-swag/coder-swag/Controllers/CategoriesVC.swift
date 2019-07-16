//
//  ViewController.swift
//  coder-swag
//
//  Created by Samiul Haque on 16/7/19.
//  Copyright © 2019 Samiul Haque. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource,UITableViewDelegate
{
    
    @IBOutlet weak var categoryTable : UITableView!
    
    private(set) public var categories = [Category]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        
        categories = DataService.instance.getCategories()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell
        {
            let category = categories[indexPath.row]
            cell.updateCategoryViews(category: category)
            
            return cell
            
        }
        else
        {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let category = categories[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // my segue destination is the product view controller
        if let productsVC = segue.destination as? ProductsVC
        {
            let barBtn = UIBarButtonItem()
            barBtn.title = "" // create empty title for back button
            navigationItem.backBarButtonItem = barBtn // initializing as empty title
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
        }
        
    }
    

   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
   {
        
        return 140.0
   }
}

