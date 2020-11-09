//
//  Evento.swift
//  eventos
//
//  Created by Alumno on 11/9/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation

class Evento {
    var titulo : String
    var fecha : String
    var hora : String
    var lugar : String
    var imagen : String
    
    init(titulo: String, fecha: String, hora: String, lugar: String, imagen:String) {
        self.fecha = fecha
        self.hora = hora
        self.imagen = imagen
        self.lugar = lugar
        self.titulo = lugar
    }
}
