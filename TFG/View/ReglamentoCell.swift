//
//  ReglamentoCell.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 24/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import UIKit

class ReglamentoCell: UITableViewCell {

    
    @IBOutlet weak var reglamentoTituloView: UILabel!
    @IBOutlet weak var reglamentoDescripcionView: UILabel!
    
    //Data Model
    var reglamento: Reglamento?
    {
        didSet { self.updateUI()}
    }
    
    func updateUI()
    {
        reglamentoTituloView?.text = reglamento?.titulo
        reglamentoDescripcionView?.text = reglamento?.descripcion
    }
    
}
