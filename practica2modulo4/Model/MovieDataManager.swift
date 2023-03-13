//
//  MovieDataManager.swift
//  practica2modulo4
//
//  Created by Jesús Enrique Castro on 10/03/23.
//

import Foundation

class MovieDataManager{
    private var movies : [Movie] = []
    
    func fetch(genre:String){
        if let file  = Bundle.main.url(forResource: "movies", withExtension: "json"){
            do{
                let data = try Data(contentsOf: file)
                let decodedMovies = try JSONDecoder().decode([Movie].self, from: data)
                movies = decodedMovies.filter(
                    {$0.genres.contains(genre)}
                )
            }catch{
                print("Error:",error)
            }
        }
    }
    
    func movieCount() -> Int{
        return movies.count
    }
    
    func movieAt(index:Int) -> Movie{
        return movies[index]
    }
    
}
