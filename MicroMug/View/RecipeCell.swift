//
//  RecipeCell.swift
//  MicroMug
//
//  Created by Bridi Grimley on 07/03/2020.
//  Copyright © 2020 Bridi Grimley. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {

    @IBOutlet weak var recipeImg: UIImageView!
    
    @IBOutlet weak var recipeLbl: UILabel!
    
    @IBOutlet weak var favBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        recipeImg.layer.cornerRadius = 10
    }
    @IBAction func FavButtonClicked(_ sender: Any) {
        FavButtonClicked()
    }
    
    func configRecipeCell(recipe: RecipeCategory){
        recipeImg.image = UIImage(named: recipe.imageName)
        recipeLbl.text = recipe.title
    }
    
  func FavButtonClicked() {
        favBtn.setImage(#imageLiteral(resourceName: "starFilled"), for: .normal)
    }

}
