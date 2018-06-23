//
//  Tecnico.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 23/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import Foundation
import UIKit

class Tecnico
{
    var nombre: String?
    var apellido: String?
    var email: String?
    var password: String?
    var titulacion: String = ""
    var foto: UIImage?
    
    init(n: String, ap: String, titulo: String, img: UIImage)
    {
        nombre = n
        apellido = ap
        titulacion = titulo
        foto = img
    }
    
    init (correo: String, contraseña: String)
    {
        email = correo
        password = contraseña
    }
}













