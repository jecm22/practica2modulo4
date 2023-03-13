//
//  DetailViewController.swift
//  practica2modulo4
//
//  Created by Jesús Enrique Castro on 10/03/23.
//

import UIKit

class DetailViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var recivedGenero : Genre?
    var selectedMovie : Movie?
    let movieDM = MovieDataManager()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieDM.movieCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "peliculas", for: indexPath) as! MovieTableViewCell
        
        let movie = movieDM.movieAt(index: indexPath.row)
        cell.movieName.text = movie.title
        cell.movieActor.text = movie.director
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMovie = movieDM.movieAt(index: indexPath.row)
        self.performSegue(withIdentifier: "goToVerMas", sender: Self.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! VerMasViewController
        destination.recievedMovie = selectedMovie
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        movieDM.fetch(genre: recivedGenero!.genre)
        // Do any additional setup after loading the view.
    }
    
}
