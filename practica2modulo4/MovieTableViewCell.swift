//
//  MovieTableViewCell.swift
//  practica2modulo4
//
//  Created by Jesús Enrique Castro on 10/03/23.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet var movieName: UILabel!
    @IBOutlet var movieActor: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
