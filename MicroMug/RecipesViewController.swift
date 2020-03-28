//
//  RecipesViewController.swift
//  MicroMug
//
//  Created by Bridi Grimley on 07/03/2020.
//  Copyright © 2020 Bridi Grimley. All rights reserved.
//

import UIKit

class RecipesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  
    var selectedCategory: String!
    var recipes: [RecipeCategory]!
    let data = DataSet()
    var recipeToPass: RecipeCategory!
    
    @IBOutlet weak var recipeListVC: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       recipeListVC
        .tableFooterView = UIView()
        recipeListVC.delegate = self
        recipeListVC.dataSource = self
        recipes = data.getRecipes(forCategoryTitle: selectedCategory)
        //        recipesTV.tableFooterView = UIView()
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
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        recipeToPass = recipes[indexPath.item]
        performSegue(withIdentifier: "recipe2Details", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsVC = segue.destination as? RecipeDetailsViewController{
            detailsVC.selectedRecipe = recipeToPass
        }
    }
}
