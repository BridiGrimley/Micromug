//
//  RecipesViewController.swift
//  MicroMug
//
//  Created by Bridi Grimley on 07/03/2020.
//  Copyright © 2020 Bridi Grimley. All rights reserved.
//

import UIKit

class RecipesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var data = DataSet()
    
    var selectedCategory: String!
    var recipes: [RecipeCategory]!
    var recipeToPass: RecipeCategory!
    
    @IBOutlet weak var recipesTV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        recipesTV.delegate = self
        recipesTV.dataSource = self
        recipes = data.getRecipes(forCategoryTitle: selectedCategory)
        recipesTV.tableFooterView = UIView()
    }
    
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                
        return recipes.count
                
            }
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               if let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell", for: indexPath) as? RecipeCell{
                let recipe = recipes[indexPath.item]
                cell.configRecipeCell(recipe: recipe)
                   return cell
               }
               return UITableViewCell()
            }

}
