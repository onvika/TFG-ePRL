//
//  Empresa.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 23/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift


enum TipoEmpresa
{
    case constructora
    case hosteleria
    case medioAmbiente
    case hospital
    case sinEspecificar
}


class Empresa
{
    //@objc dynamic var nombre: String = ""
    //@objc dynamic var encargado: String = ""
    //@objc dynamic var telefono: String = ""
    //@objc dynamic var email: String = ""
    //@objc dynamic var direccion: String = ""
    //@objc dynamic var numTrabajadores: String = ""
    //@objc dynamic var logo: String = ""

    
    var nombre: String = ""
    var encargado: String = ""
    var telefono: String = ""
    var email: String = ""
    var direccion: String = ""
    var numTrabajadores: String = ""
    var logo: UIImage
    var sector: TipoEmpresa
    
    init (nombrado: String, por: String, numero: String, correo: String, direccion: String, empleados: String, imageName: String)
    {
        self.nombre = nombrado
        self.encargado = por
        self.telefono = numero
        self.email = correo
        self.direccion = direccion
        self.numTrabajadores = empleados
        
        if let logo = UIImage(named: imageName)
        {
            self.logo = logo
        }
        else
        {
            self.logo = UIImage(named: "empresa2")!
        }
        
        sector = .sinEspecificar
    }
    
    class func getEmpresa() -> [Empresa]
    {
        
        let emp1 = Empresa(nombrado: "A", por: "AA", numero: "aaaa", correo: "a@a.com", direccion: "someWhere in Asturias", empleados: "23", imageName: "empresa2")
        let emp2 = Empresa(nombrado: "B", por: "BB", numero: "bbbb", correo: "b@b.com", direccion: "someWhre in Barcelona", empleados: "64", imageName: "empresa3")
        let emp3 = Empresa(nombrado: "C", por: "CC", numero: "cccc", correo: "c@c.com", direccion: "SomeWhere in Cadiz", empleados: "38", imageName: "empresa5")
        
        return [emp1, emp2, emp3]
    }
    
}










