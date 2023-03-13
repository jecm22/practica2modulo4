//
//  FavoritesViewController.swift
//  practica2modulo4
//
//  Created by Jesús Enrique Castro on 10/03/23.
//

import UIKit

class FavoritesViewController: UIViewController {

    let posters = ["0","1","2","3","4"]
    @IBOutlet var posterPageControl: UIPageControl!
    @IBOutlet var favoritePosterImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        posterPageControl.numberOfPages = posters.count
        favoritePosterImage.image = UIImage(named: posters[posterPageControl.currentPage])
        // Do any additional setup after loading the view.
    }
    

    @IBAction func posterPageControlAction(_ sender: Any) {
        favoritePosterImage.image = UIImage(named: posters[posterPageControl.currentPage])
        
        

    }
    
    
    @IBAction func swipederecha(_ sender: Any) {
        
        if(posterPageControl.currentPage==0){
                    posterPageControl.currentPage=posters.count-1
                }else{
                    posterPageControl.currentPage-=1
                }
                favoritePosterImage.image = UIImage(named: posters[posterPageControl.currentPage])
        
    }
    
    @IBAction func swipeizquierda(_ sender: Any) {
        if(posterPageControl.currentPage==posters.count-1){
                    posterPageControl.currentPage=0
                }else{
                    posterPageControl.currentPage+=1
                }
                favoritePosterImage.image = UIImage(named: posters[posterPageControl.currentPage])
        
    }
    
    
}
