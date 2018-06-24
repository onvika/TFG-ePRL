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
    @IBOutlet weak var especialidadTextField: UITextField!
    @IBOutlet weak var contrasenaTextField: UITextField!
    @IBOutlet weak var correoTextField: UITextField!
    
    var datosTecnico: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func crearDatosTecnico()
    {
        let fullName = nombreTextField.text! + " " + apellidoTextField.text!
        datosTecnico.append(fullName)
        datosTecnico.append(correoTextField.text!)
        datosTecnico.append("................")
        datosTecnico.append(especialidadTextField.text!)
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
                self.crearDatosTecnico()
                print("Datos del Tecnico: \(self.datosTecnico)")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToHome", sender: self)
            }
        }
        
    }
    
    
    @IBAction func atrasButtonPressed(_ sender: Any)
    {
       
            if Auth.auth().currentUser == nil
            {
                self.performSegue(withIdentifier: "welcomeVC", sender: self)
            }
        
        
    }
    
    
}










