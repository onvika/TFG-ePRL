//
//  LoginVC.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 23/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD


class LoginVC: UIViewController
{

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    
    }
    
    //Login in an existing user
    @IBAction func loginButtonPressed(_ sender: UIButton)
    {
        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            
            if error != nil
            {
                print(error!)
            }
            else
            {
                print("LogIn Successful!")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToHome", sender: self)
            }
        }
    }
 
    
    
    
    
    
    
    
}









