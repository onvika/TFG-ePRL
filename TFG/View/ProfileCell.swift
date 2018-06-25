//
//  ProfileCell.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 24/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import Foundation
import UIKit

class ProfileCell: UITableViewCell
{
    
  
    @IBOutlet weak var seccion: UILabel!
    @IBOutlet weak var datosTecnico: UILabel!
    
    
    func setElemento (elemento: String, datos: String)
    {
        seccion.text = elemento
        datosTecnico.text = datos
    }
    
}

