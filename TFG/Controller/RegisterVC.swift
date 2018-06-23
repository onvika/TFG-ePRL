//
//  RegisterVC.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 23/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD


class RegisterVC: UIViewController {

    
    @IBOutlet weak var nombreTextField: UITextField!
    @IBOutlet weak var apellidoTextField: UITextField!
    @IBOutlet weak var contrasenaTextField: UITextField!
    @IBOutlet weak var correoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func registrarButtonPressed(_ sender: Any)
    {
        Auth.auth().createUser(withEmail: correoTextField.text!, password: contrasenaTextField.text!) { (user, error) in
            
            if error != nil
            {
                print("Error al registrarse\(error!)")
            }
            else
            {
                print("Registro realizado !")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToHome", sender: self)
            }
        }
        
    }
    
}










