//
//  AnadeEmpresaVC.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 24/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import UIKit
import Firebase



class AnadeEmpresaVC: UIViewController {

    
    @IBOutlet weak var nombreEmpTF: UITextField!
    @IBOutlet weak var encargadoTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var correoTF: UITextField!
    @IBOutlet weak var direTF: UITextField!
    @IBOutlet weak var numTrabTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let destinoVC: EmpresaViewController = segue.destination as! EmpresaViewController
        
        destinoVC.empresa.nombre = nombreEmpTF.text
        destinoVC.empresa.direccion = direTF.text
        destinoVC.empresa.email = correoTF.text
        destinoVC.empresa.encargado = encargadoTF.text
        destinoVC.empresa.telefono = phoneTF.text
        destinoVC.empresa.numTrabajadores = numTrabTF.text
    }
 
    @IBAction func cancelButtonPressed(_ sender: Any)
    {
        if Auth.auth().currentUser != nil
        {
            self.performSegue(withIdentifier: "empresaVC", sender: self)
        }
    }
    
    @IBAction func guardarButtonPressed(_ sender: Any)
    {
       self.performSegue(withIdentifier: "anadeEmpresaSegue", sender: self)
        
    }

}
