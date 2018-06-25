//
//  DetalleEmpresaTableViewController.swift
//  
//
//  Created by Onhilda Benítez Gómez on 25/6/18.
//

import UIKit

class DetalleEmpresaTableViewController: UITableViewController {

    
    @IBOutlet weak var fotoEmp: UIImageView!
    @IBOutlet weak var nomEmpTextField: UITextField!
    @IBOutlet weak var encargadoTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var correoElecTF: UITextField!
    
    //Tipo guardado Int
    @IBOutlet weak var numEmpTF: UITextField!
    
    var empresa: Empresa?
    // para Testing var empresa: Empresa? = Empresa.getEmpresa()[2]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Editar Empresa"
        
        fotoEmp.image = empresa?.logo
        nomEmpTextField!.text = empresa?.nombre
        encargadoTF!.text = empresa?.encargado
        phoneTF!.text = empresa?.telefono
        correoElecTF!.text = empresa?.email
        numEmpTF!.text = empresa?.numTrabajadores
        
    }

    /*override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    */
   

}















