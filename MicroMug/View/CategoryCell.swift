//
//  CategoryCell.swift
//  MicroMug
//
//  Created by Bridi Grimley on 07/03/2020.
//  Copyright © 2020 Bridi Grimley. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImg: UIImageView!
    
    @IBOutlet weak var categoryLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configCell(category: CategoryModel){
        categoryImg.image = UIImage(named: category.imageName)
        categoryLbl.text = category.title
    }
  

}
