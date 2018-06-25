//
//  ReglamentoTableVC.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 24/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import UIKit

class ReglamentoVC: UIViewController 
{

    @IBOutlet weak var tableView: UITableView!
    
    var selectedReglamento: Reglamento?
    
    // MARK: - Data Model
    var normativa: [Normativa] = Normativa.getNormativa()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = "Reglamentos"
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

    @IBAction func atrasButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "goToHome", sender: self)
    }
    
    
    
}

extension ReglamentoVC: UITableViewDelegate, UITableViewDataSource
{
    
    // MARK: - Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        return normativa.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return normativa[section].reglamentos.count
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaReglamento", for: indexPath) as! ReglamentoCell
        
        //let leyes = normativa[indexPath.section]
        //cell.reglamentoTituloView?.text = reg.titulo
        //cell.reglamentoDescripcionView?.text = reg.description
    
    
    cell.reglamento = normativa[indexPath.section].reglamentos[indexPath.row]
    
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        let normas = normativa[section]
        return normas.name
    }

    
    
    //MARK:- UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let normas = normativa[indexPath.section]
        let reglas = normas.reglamentos[indexPath.row]
        
        selectedReglamento = reglas
        performSegue(withIdentifier: "goToDetalles", sender: nil)
    }
    
    //Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "goToDetalles"
        {
            let reglamentoDetalleVC = segue.destination as! ReglamentoDetailVC
            
            reglamentoDetalleVC.reglamento = selectedReglamento
        }
    }
}










