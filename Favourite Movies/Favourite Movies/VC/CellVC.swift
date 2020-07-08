//
//  CellVC.swift
//  Favourite Movies
//
//  Created by tahani alrashidi on 7/8/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import UIKit

class CellVC: UITableViewCell {
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        corner()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func callCell(for Movie: moviesModel){
        movieImage.image = UIImage(named: Movie.movieName)
        movieName.text = Movie.movieName
    }
    func corner(){
        movieImage.layer.cornerRadius = 60
    }
}
