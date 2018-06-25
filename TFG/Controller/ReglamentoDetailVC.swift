//
//  DetailTableViewController.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 25/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import UIKit
import WebKit

class ReglamentoDetailVC: UITableViewController
{

    @IBOutlet weak var detalleReglamentos: WKWebView!
    
    var pdfname = ""
    var reglamento: Reglamento?
    
    override func viewDidLoad() {
        title = "Más información"
       
        let path = Bundle.main.path(forResource: pdfname, ofType: "pdf")
        let enlace = URL(fileURLWithPath: path!)
        let request = URLRequest(url: enlace)
        
        detalleReglamentos.load(request)
    }
    
    
}












