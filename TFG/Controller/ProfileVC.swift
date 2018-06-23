//
//  ProfileVC.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 23/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var profileTableView: UITableView!
    @IBOutlet weak var imgProfile: UIImageView!
    
    var elementosPerfil: [String] = ["Nombre", "Email", "Contraseña", "Posición"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //estableer estilo de la foto perfil redonda
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(true)
        setStyleCirculeForImage(img: imgProfile)
    }
    
    func setStyleCirculeForImage(img: UIImageView)
    {
        img.layer.cornerRadius = img.frame.size.width / 2
        img.clipsToBounds = true
    }
    

}


extension ProfileVC: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        print("NUMERO ELEMENTOS DEL ARRAY: \(elementosPerfil.count)")
        return elementosPerfil.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let elemento = elementosPerfil[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdasProfile") as! ProfileCell
        
        print("ELEMENTO ARRAY: \(elemento)")
        cell.setElemento(a: elemento)
        
        return cell
    }
}

