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
    var selectedEmpresa: Empresa?
    @IBOutlet weak var empTableView: UITableView!
    
    
    var empresas: [Empresa] = Empresa.getEmpresa()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //guardarEmpresa()
        
        //tableView.delegate = self
        //tableView.dataSource = self
        
       
        
        navigationItem.rightBarButtonItem = editButtonItem
        
        self.title = "Empresas"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   /* func guardarEmpresa()
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
    }*/

    @IBAction func atrasButtonPressed(_ sender: Any)
    {
            self.performSegue(withIdentifier: "goToHome", sender: self)
    }
    
    
    
}
    
extension EmpresaViewController: UITableViewDataSource, UITableViewDelegate
{
    
    //MARK: - UI Table View DataSource
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
        
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaEmpresa") as! EmpresaCell
        
        let emp = empresas[indexPath.row]
        cell.nombreEmp.text = emp.nombre
        cell.encargadoEmp.text = emp.encargado
        cell.logoEmpresa.image = emp.logo
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            print("Deleted")
            
            self.empresas.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let emp = empresas[indexPath.row]
        selectedEmpresa = emp
        
        performSegue(withIdentifier: "goToDetail", sender: nil)
    }
    
    //Mark: - Navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "goToDetail"
        {
            let empVC = segue.destination as! DetalleEmpresaTableViewController
            empVC.empresa = selectedEmpresa
        }
        
    }
    
}


