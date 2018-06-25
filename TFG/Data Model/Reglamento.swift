//
//  ReglamentosTableViewController.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 24/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import UIKit

class Reglamento
{
    var titulo: String
    var descripcion: String
    var docpdf: String 
    
    init(titulado: String, descripcion: String, documentacion: String)
    {
        self.titulo = titulado
        self.descripcion = descripcion
        self.docpdf = documentacion
    }

}
