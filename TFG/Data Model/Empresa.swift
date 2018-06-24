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

class Empresa: Object
{
    @objc dynamic var nombre: String?
    @objc dynamic var encargado: String?
    @objc dynamic var telefono: String?
    @objc dynamic var email: String?
    @objc dynamic var direccion: String?
    @objc dynamic var numTrabajadores: String?
    @objc dynamic var logo: String?

}
