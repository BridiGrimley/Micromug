//
//  RecipeDetailsViewController.swift
//  MicroMug
//
//  Created by Karl McGeough on 18/03/2020.
//  Copyright © 2020 Bridi Grimley. All rights reserved.
//

import UIKit

class RecipeDetailsViewController: UIViewController {

    
    
    @IBOutlet weak var recipeTitleLbl: UILabel!
    @IBOutlet weak var recipeImg: UIImageView!
    
    @IBOutlet weak var descriptionTxt: UILabel!
    
    @IBOutlet weak var ingredientsTxt: UILabel!
    
    @IBOutlet weak var methodTxt: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    var selectedRecipe: RecipeCategory!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.layoutSubviews()
        methodTxt.sizeToFit()
        recipeImg.layer.cornerRadius = 10
        recipeImg.image = UIImage(named: selectedRecipe.imageName)
        recipeTitleLbl.text = selectedRecipe.title
        descriptionTxt.text = selectedRecipe.description
        methodTxt.text = selectedRecipe.method
        ingredientsTxt.text = selectedRecipe.ingredients
        scrollView.updateContentView()
        // Do any additional setup after loading the view.
    }
    
    


}

extension UIScrollView {
    func updateContentView() {
        contentSize.height = subviews.sorted(by: { $0.frame.maxY < $1.frame.maxY }).last?.frame.maxY ?? contentSize.height
    }
}
