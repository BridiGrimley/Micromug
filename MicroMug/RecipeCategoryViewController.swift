//
//  RecipeCategoryViewController.swift
//  MicroMug
//
//  Created by Bridi Grimley on 06/03/2020.
//  Copyright © 2020 Bridi Grimley. All rights reserved.
//

import UIKit

class RecipeCategoryViewController: UIViewController, UITableViewDelegate,  UITableViewDataSource {
    
    @IBOutlet weak var recipesTV: UITableView!
    
    var data = DataSet()
    var categoryToPass: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        recipesTV.delegate = self
        recipesTV.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         
        return data.categories.count
         
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CategoryCell{
            cell.configCell(category: data.categories[indexPath.row])
            return cell
        }
        return UITableViewCell()
     }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        categoryToPass = data.categories[indexPath.row].title
        performSegue(withIdentifier: "cat2RecipeSW", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Categories", style: .plain, target: nil, action: nil)
           if let recipesVC = segue.destination as? RecipesViewController {
               recipesVC.selectedCategory = categoryToPass
           }
       }

}
