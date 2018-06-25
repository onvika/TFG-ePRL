//
//  PerfilViewController.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 24/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD



class PerfilViewController: UIViewController {
    
    @IBOutlet weak var profileTableView: UITableView!
    
    @IBOutlet weak var imgProfile: UIImageView!
    
    @IBOutlet weak var nombreTecTextField: UILabel!
    
    @IBOutlet weak var posicionTextField: UILabel!
    
    
    var elementosTecnico: [String] = ["Nombre", "Email", "Contraseña", "Titulación"]
    var datos: [String] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    //establecer estilo de la foto perfil redonda
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(true)
        setStyleCirculeForImage(img: imgProfile)
        nombreTecTextField.text = "Pepito Perez"
        posicionTextField.text = "Ingeniero Superior"
    }
    
    func setStyleCirculeForImage(img: UIImageView)
    {
        img.layer.cornerRadius = img.frame.size.width / 2
        img.clipsToBounds = true
    }
   
    
    @IBAction func atrasButtonPressed(_ sender: UIButton)
    {
        self.performSegue(withIdentifier: "goToHome", sender: self)
    }
    
    
    
    @IBAction func logOutPressed(_ sender: UIButton)
    {
        //Log out thte user and send them back to the welcomeVC
        
        do {
            try Auth.auth().signOut()
            
            self.performSegue(withIdentifier: "goToLogin", sender: self)
            //navigationController?.popToRootViewController(animated: true)
        }
        catch let logoutError{
            print("Ha habido un error al desconectarse \(logoutError)")
        }
    }
    
}

extension PerfilViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return elementosTecnico.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //let valor = datos[indexPath.row]
        let elemento = elementosTecnico[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaPerfil") as! ProfileCell
        
        cell.setElemento(elemento: elemento, datos: "................")
        
        return cell
    }
}

