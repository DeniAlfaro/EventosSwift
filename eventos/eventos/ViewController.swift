//
//  ViewController.swift
//  eventos
//
//  Created by Alumno on 11/9/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var eventos : [Evento] = []
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaEvento = tableView.dequeueReusableCell(withIdentifier: "celdaEvento") as! celdaEventoController
        
        celdaEvento.lblHora.text = eventos[indexPath.row].hora
        celdaEvento.lblFecha.text = eventos[indexPath.row].fecha
        celdaEvento.lblLugar.text = eventos[indexPath.row].lugar
        celdaEvento.lblTitulo.text = eventos[indexPath.row].titulo
        
        celdaEvento.imagenEvento.image = UIImage(named: eventos[indexPath.row].imagen)
        return celdaEvento
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 233
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        eventos.append(Evento(titulo: "Musical HSM", fecha: "Diciembre 2020" , hora: "21 hrs", lugar: "Hermosillo", imagen: "hsm1"))
        eventos.append(Evento(titulo: "Musical HSM", fecha: "Enero 2021" , hora: "21 hrs", lugar: "Obregon", imagen: "hsm2"))
    }


}

