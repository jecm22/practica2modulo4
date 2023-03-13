//
//  VerMasViewController.swift
//  practica2modulo4
//
//  Created by Jesús Enrique Castro on 10/03/23.
//

import UIKit
import WebKit

class VerMasViewController: UIViewController {
    
    @IBOutlet var imagenPelicula: WKWebView!
    
    @IBOutlet var director: UILabel!
    
    @IBOutlet var year: UILabel!
    
    @IBOutlet var Actores: UILabel!
    
    @IBOutlet var plot: UILabel!
    
    
    var recievedMovie : Movie?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let myURL = URL(string:recievedMovie!.posterUrl)
        
        let myRequest = URLRequest(url: myURL!)
        
        imagenPelicula.load(myRequest)
        
        year.text = recievedMovie!.year
        director.text = recievedMovie!.director
        Actores.text = recievedMovie!.actors
        plot.text = recievedMovie!.plot
        
        
    }
}
