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
    
    
    // MARK: - Data Model
    var reglamentos = Normativa.getNormativa()[0].reglamentos
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = "Reglamentos"
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
}

extension ReglamentoVC: UITableViewDelegate, UITableViewDataSource
{
    
    // MARK: - Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return reglamentos.count
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaReglamento", for: indexPath) as! ReglamentoCell
        
        let regl = reglamentos[indexPath.row]
        cell.reglamentoTituloView?.text = regl.titulo
        //cell.reglamentoDescripcionView.text = r.description
        
        return cell
    }
}
