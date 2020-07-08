//
//  MovieDetailsVC.swift
//  Favourite Movies
//
//  Created by tahani alrashidi on 7/8/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import UIKit
import AVFoundation

class MovieDetailsVC: UIViewController {
    
    var movieData : moviesModel!
    var playerSoundEffect: AVAudioPlayer?
    
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieName: UINavigationItem!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorImg3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!
    
    @IBOutlet weak var ratingBG: UIView!
    
    @IBOutlet weak var ratedBG: UIView!
    
    @IBOutlet weak var yearBG: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        setMovieDetails()
        playMusic(name: movieData.movieName)
    }
    
    func setMovieDetails(){
        movieName.title = movieData.movieName
        self.movieImg.image = UIImage(named: movieData.movieName)
        self.movieRated.text = movieData.rated
        self.movieRating.text = String(movieData.rating)
        
        self.movieReleaseDate.text = String(movieData.movieReleaseDate)
        
        self.actorImg1.image = UIImage(named: movieData.actors[0])
        self.actorName1.text = movieData.actors[0]
        self.actorImg2.image = UIImage(named: movieData.actors[1])
        self.actorName2.text = movieData.actors[1]
        self.actorImg3.image = UIImage(named: movieData.actors[2])
        self.actorName3.text = movieData.actors[2]
    }
    
    func configureUI(){
        ratedBG.layer.cornerRadius = 20
        ratingBG.layer.cornerRadius = 20
        yearBG.layer.cornerRadius = 20
    }
    
    //theme music
    func playMusic(name: String){
        let path = Bundle.main.path(forResource: movieData.movieName, ofType: "m4a")!
        let url = URL(fileURLWithPath: path)
        
        do{
            playerSoundEffect = try AVAudioPlayer(contentsOf: url)
            playerSoundEffect?.play()
        }catch{
            // couldn't load file
        }
    }
    
    
    
}
