//
//  LoginViewController.swift
//  MicroMug
//
//  Created by Karl McGeough on 31/03/2020.
//  Copyright © 2020 Bridi Grimley. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBOutlet weak var loginBtn: UIButton!
    
    @IBOutlet weak var registerBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBtn.layer.cornerRadius = 20
        registerBtn.layer.cornerRadius = 20
        emailTxt.layer.cornerRadius = 20
        passwordTxt.layer.cornerRadius = 20
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(true)
           if Auth.auth().currentUser != nil {
               performSegue(withIdentifier: "loginToHomeSW", sender: self)
           }
       }
    
    
    @IBAction func loginBtnClick(_ sender: Any) {
       
            Auth.auth().signIn(withEmail: emailTxt.text!, password: passwordTxt.text!){ (user, error) in
            if error == nil{
                self.performSegue(withIdentifier: "loginToHomeSW", sender: self)
            }
            else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
    
        }
    }

  
}
