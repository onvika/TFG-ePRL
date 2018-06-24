//
//  Normativa.swift
//  TFG
//
//  Created by Onhilda Benítez Gómez on 24/6/18.
//  Copyright © 2018 Onhilda Benítez Gómez. All rights reserved.
//

import Foundation
import UIKit

class Normativa
{
    var name: String
    var reglamentos: [Reglamento]
    
    init (named: String, incluirReglamentos: [Reglamento])
    {
        name = named
        reglamentos = incluirReglamentos
    }
    
    class func getNormativa() -> [Normativa]
    {
        return [guias(), ntps(), manuales()]
    }
    
    //MARK: - Metodos privados auxiliares
    private class func guias() -> Normativa
    {
        //(1)Guias: Epis, Integración, LugaresTrabajo, manipulacionCargas, riesgoElectronico, PDV
        var reglamentos: [Reglamento] = []
        
        //EPIS
        let r = Reglamento(titulado: "EPIS", description: "La presente Guía tiene por objeto facilitar la aplicación  sobre disposiciones mínimas de seguridad y salud relativas a la utilización por los trabajadores de equi- pos de protección individual.")
        reglamentos.append(r)
        
        //Integración
        reglamentos.append(Reglamento(titulado: "Integración", description: "El Instituto Nacional de Seguridad e Higiene en el Trabajo (INSHT) elaborará y mantendrá actualizada una guía técnica sobre la integración de la prevención de riesgos laborales en el sistema general de gestión de la empresa."))
        
        //Ruido
        reglamentos.append(Reglamento(titulado: "Exposición al ruido", description: "Esta Guía tiene por objeto facilitar la aplicación sobre la protección de la salud y la seguridad de los trabajadores contra los riesgos relacionados con la exposición a ruido."))
        
        //Lugares de trabajo
        reglamentos.append(Reglamento(titulado: "Lugares de trabajo", description: "El presente documento constituye la Guía Técnica para la evaluación y prevención de los riesgos relativos a la utilización de los lugares de trabajo"))
        
        //Riesgo Electronico
        reglamentos.append(Reglamento(titulado: "Riesgo Electrónico", description: "Facilita y proporciona criterios que ayudan a realizar la evaluación de los riesgos eléctricos y la adopción de las correspondientes medidas preventivas."))
        
        //PVD
        reglamentos.append(Reglamento(titulado: "Pantallas de Visualización Digital", description: "Disposiciones mínimas de seguridad y salud relativas al trabajo con equipos que incluyen pantallas de visualización."))
        
    
        return Normativa(named: "Guías Técnicas", incluirReglamentos: reglamentos)
    }
    
    
    
    private class func ntps() -> Normativa
    {
        //(2)NTPs: 831, 832, 852
        var reglamentos: [Reglamento] = []
        
        //NTP 831
        reglamentos.append(Reglamento(titulado: "NTP 831", description: "Reglamento de seguridad contra incendios en establecimientos industriales (RD 2267/2004)(I)"))
        
        //NTP 832
        reglamentos.append(Reglamento(titulado: "NTP 832", description: "Reglamento de seguridad contra incendios en establecimientos industriales (RD 2267/2004) (II)"))
        
        //NTP 852
        reglamentos.append(Reglamento(titulado: "NTP 852", description: "Esta NTP está dedicada a las condiciones de seguridad en el almacenamiento en estanterías metálicas convencio- nales para cargas paletizadas. Actualiza y sustituye a la NTP 618 , incorporando los criterios de la nueva normativa europea sobre estanterías y con el fin de adecuarla a las situaciones reales del mercado"))
        
        return Normativa(named: "NTPs", incluirReglamentos: reglamentos)
    }
    
    
    private class func manuales() -> Normativa
    {
        //(3)Manual ERL
        var reglamentos: [Reglamento] = []
        
        //ERL
        reglamentos.append(Reglamento(titulado: "Manual EPRL", description: "Manual para la evaluación y prevención de riesgos ergonómicos y psicosociales en la PYME"))
        
        return Normativa(named: "Manuales", incluirReglamentos: reglamentos)
    }
}
