//
//  GenreDataManager.swift
//  practica2modulo4
//
//  Created by Jesús Enrique Castro on 10/03/23.
//

import Foundation

class GenreDataManager{
    
    private var genres : [Genre] = []
    
    func fetch(){
        if let file = Bundle.main.url(forResource: "genres", withExtension: "json"){
            do{
                
                let data = try Data(contentsOf: file)
                let decodedGenres = try JSONDecoder().decode([String].self,from:data)
                for genre in decodedGenres{
                    genres.append(Genre(genre: genre))
                }
            }
            catch{
                print("Error")
            }
        }
    }
    
    func genreCount() -> Int{
        return genres.count
    }
    
    func genreAt(index: Int) -> Genre{
        return genres[index]
    }
    
    func genreValue(index:Int) -> String{
        genres[index].genre
    }
}
