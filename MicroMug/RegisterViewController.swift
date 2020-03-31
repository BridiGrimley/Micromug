//
//  RegisterViewController.swift
//  MicroMug
//
//  Created by Karl McGeough on 31/03/2020.
//  Copyright © 2020 Bridi Grimley. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBOutlet weak var confirmPasswordTxt: UITextField!
    
    @IBOutlet weak var registerBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerBtn.layer.cornerRadius = 20
      
    }
    
    @IBAction func registerClick(_ sender: Any) {
        if passwordTxt.text == confirmPasswordTxt.text {
        Auth.auth().createUser(withEmail: emailTxt.text!, password: passwordTxt.text!, completion: nil)
            performSegue(withIdentifier: "registerToHomeSW", sender: self)
        }
        
    }
    
  

}
