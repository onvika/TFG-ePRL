//
//  EmpresaViewController.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 23/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import UIKit
import RealmSwift
import Firebase


class EmpresaViewController: UIViewController
{
    
    @IBOutlet weak var empTableView: UITableView!
    
    let realm = try! Realm()
    var empresas = [Empresa]()
    var empresa = Empresa()
    
    //crear random logos para la empresa
    let logosEmpresa = ["empresa1", "empresa2", "empresa3", "empresa4", "empresa5"]
    var randomNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        guardarEmpresa()
        
        //tableView.delegate = self
        //tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func guardarEmpresa()
    {
        empresa.logo = logosEmpresa[randomNumber]
        empresas.append(empresa)
        
        do{
            
            try realm.write
            {
                realm.add(empresas)
            }
        }
        catch
        {
            print("Error inicializando Realm \(error)")
        
        }
    

    
}

    @IBAction func atrasButtonPressed(_ sender: Any)
    {
            self.performSegue(withIdentifier: "goToHome", sender: self)
    }
}
    
extension EmpresaViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return empresas.count
    }
    
    func setStyleCirculeForImage(img: UIImageView)
    {
        img.layer.cornerRadius = img.frame.size.width / 2
        img.clipsToBounds = true
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let emp = empresas[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaEmpresa") as! EmpresaCell
        
        cell.encargadoEmp?.text = emp.encargado
        cell.nombreEmp?.text = emp.nombre
        cell.logoEmpresa?.image = UIImage (named: emp.logo!)
        
        return cell
    }
    
}


