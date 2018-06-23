//
//  EmpresaViewController.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 23/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import UIKit
import RealmSwift

class EmpresaViewController: UIViewController {

    
    @IBOutlet weak var empTableView: UITableView!
    
    
    var empresas: [Empresa] = []
    
    //crear random logos para la empresa
    let logoEmpresa = ["empresa1", "empresa3", "empresa4", "empresa5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        empresas = crearEmpresa()
        
        //tableView.delegate = self
        //tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func crearEmpresa() -> [Empresa]
    {
        
        let emp1 = Empresa()
        emp1.nombre = "Mercadona"
        emp1.direccion = "Calle Valencia"
        emp1.email = "a@b.com"
        emp1.encargado = "Juan P."
        emp1.numTrabajadores = "34"
        
        let emp2 = Empresa()
        emp2.nombre = "Constructora Santiago"
        emp2.direccion = "Avenida Francia"
        emp2.email = "a@b.com"
        emp2.encargado = "Antonio P."
        emp2.numTrabajadores = "12"
        
        let emp3 = Empresa()
        emp3.nombre = "Satreria"
        emp3.direccion = "Barcelona la grande"
        emp3.email = "a@b.com"
        emp3.encargado = "Francisco H."
        emp3.numTrabajadores = "58"
        
        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        
        //Realm
        do{
            let realm = try Realm()
            try realm.write
            {
                realm.add(emp1)
                realm.add(emp2)
                realm.add(emp3)
            }
        }
        catch
        {
            print("Error inicializando Realm \(error)")
        }
        
        empresas.append(emp1)
        empresas.append(emp2)
        empresas.append(emp3)
        
        return empresas
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
        
        let item = UIImage(named: logoEmpresa[indexPath.row])
        let icono = UIImageView(image: item)
        cell.encargadoEmp?.text = emp.encargado
        cell.nombreEmp?.text = emp.nombre
        setStyleCirculeForImage(img: icono)
        cell.logoEmpresa?.image = item
        
        return cell
    }
    
}








