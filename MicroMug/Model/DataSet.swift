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
        
        RecipeCategory(title: "Microwave Choco mug cake", imageName: "mug-cake", description: "Need a quick chocolate fix? Try making this easy microwave mug cake with storecupboard ingredients. It's even more delicious with a scoop of vanilla ice cream", method: "1. Add 4 tbsp self-raising flour, 4 tbsp caster sugar and 2 tbsp cocoa powder to the largest mug you have (to stop it overflowing in the microwave) and mix.\n2. Add 1 medium egg and mix in as much as you can, but don't worry if there's still dry mix left.\n3. Add the 3 tbsp milk, 3 tbsp vegetable or sunflower oil and a few drops of vanilla essence and mix until smooth, before adding 2 tbsp chocolate chips, nuts, or raisins, if using, and mix again.\n 4. Centre your mug in the middle of the microwave oven and cook on High for 1½ -2 mins, or until it has stopped rising and is firm to the touch.", ingredients: "4 tbsp self-raising flour\n4 tbsp caster sugar\n2 tbsp cocoa powder\n1 medium egg\n3 tbsp milk\n3 tbsp vegetable oil or sunflower oil\n2 tbsp chocolate chips, nuts, or raisins etc (optional) "),
        RecipeCategory(title: "Red velvet mug cake", imageName: "red-velvet-mug-cake-21", description: "Delicious red velvet cake that is quick and easy to make with just a few ingredients and of course your mug and microwave!", method: "Combine all mug cake ingredients into an oversized microwave-safe mug. Mix with a small whisk until batter is smooth. Cook cake in microwave for about 1 minute.\n Let cake cool and fully develop flavors before eating, about 30 minutes. While waiting, make the cream cheese frosting by combing all ingredients in a mixing bowl and mixing on high speed until frosting is light and fluffy.", ingredients: "1. 4 tbsp all purpose flour\n2. 2 tbsp granulated sugar\n3. 1/2 tbsp unsweetened cocoa powder\n4. 1/8 tsp baking soda\n5. 2 tbsp buttermilk\n6. 1 tbsp fat free milk\n7. 1/2 tbsp vegetable oil\n8. 1/8 tsp distilled vinegar\n9. 1/4 tsp red food coloring\n10. 1 oz cream cheese\n11. 1 oz butter\n12. 4-6 tbsp powdered sugar")
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


