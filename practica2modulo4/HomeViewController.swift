//
//  HomeViewController.swift
//  practica2modulo4
//
//  Created by Jesús Enrique Castro on 10/03/23.
//

import UIKit

class HomeViewController: UIViewController,UICollectionViewDataSource ,UICollectionViewDelegate {

    let estatus = ["Enviada","Recibida","En Proceso","Completada"]
    
   
    @IBOutlet var GenerosCollection: UICollectionView!
 
    @IBOutlet weak var Card: CustomView!
    
    
    var selectedEstatus: Int = 0
    var selectedGenero : Genre?
    let genreDM = GenreDataManager()
    
    //Estatus
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return genreDM.genreCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "generos", for: indexPath) as! GeneroCollectionViewCell
        
        cell.generoLabel.text = genreDM.genreValue(index: indexPath.row)
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        selectedGenero = genreDM.genreAt(index: indexPath.row)
        self.performSegue(withIdentifier: "Detail", sender: Self.self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! DetailViewController
        destination.recivedGenero = selectedGenero
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        genreDM.fetch()
        // Do any additional setup after loading the view.
    }
    

}
