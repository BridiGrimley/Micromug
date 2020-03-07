//
//  DataSet.swift
//  MicroMug
//
//  Created by Bridi Grimley on 07/03/2020.
//  Copyright © 2020 Bridi Grimley. All rights reserved.
//

import Foundation

class DataSet {
    
    let categories = [
    CategoryModel(title: "Savoury", imageName: "savouryMug"),
    CategoryModel(title: "Sweet", imageName: "Chocmug")    ]
    
    let savoury = [
        RecipeCategory(title: "Microwave Mug Pizza", imageName: "Pizzamug", description: "Homemade Pizza made in a microwave in just a few minutes? Oh yes, and it’s INCREDIBLE! My Microwave Mug Pizza recipe is a serious game changer when it comes to your meals, and maybe life (just sayin’). It is real food, fast, and better than fast food. You will simply not believe the results.", method: "1. Mix the flour, baking powder, baking soda and salt together in a microwavable mug. 2.Add in the milk and oil then mix together. There might be some lumps but that is ok. 3. Spoon on the marinara sauce and spread it around the surface of the batter. 4.Sprinkle on the cheese, pepperoni, and dried herbs. 5. Microwave for 1 minute 10 - 1 minute 20 seconds, or until it rises up and the toppings are bubbling (timing is based on my 1200W microwave so your timing might vary)", ingredients: "Flour, salt, milk"),
        RecipeCategory(title: "Mugrito", imageName: "mugBuritto", description: "One of my favorite savory breakfasts is a Breakfast Burrito. They are filling and full of things I love like eggs and cheese, and wrapped up in a soft white tortilla. To be fair, if you wrapped an old boot in a tortilla I would put salsa on it, so to fill it with some of my breakfast favorites is just a no brainer.", method: "In a large microwavable mug press in a fresh tortilla. It will naturally fold into the shape of the mug and find its way.", ingredients: "1. large 9 inch tortilla (flour or whole wheat), 2.2 eggs ")
 
    ]
    
    let sweet = [
        
        RecipeCategory(title: "Microwave mug cake", imageName: "mug-cake", description: "Need a quick chocolate fix? Try making this easy microwave mug cake with storecupboard ingredients. It's even more delicious with a scoop of vanilla ice cream", method: "", ingredients: "")
    ]
    
    func getRecipes(forCategoryTitle title:String) -> [RecipeCategory] {
        switch title {
        case "Savoury":
            return savoury
        case "Sweet":
            return sweet
        default:
            return savoury
        }
    }
}


