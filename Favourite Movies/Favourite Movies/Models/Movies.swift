//
//  Movies.swift
//  Favourite Movies
//
//  Created by tahani alrashidi on 7/8/20.
//  Copyright © 2020 Aldana Al-Rashidi. All rights reserved.
//

import Foundation

class moviesModel {
    var movieName: String = ""
    var movieReleaseDate: Int
    var actors: [String]
    var rating: Double
    var rated: String
    
    init(name: String, release: Int, actors: [String], rating: Double, rated: String) {
        self.movieName = name
        self.movieReleaseDate = release
        self.actors = actors
        self.rating = rating
        self.rated = rated
    }
    
}


var MoviesData = [
    moviesModel(name: "The Little Mermaid", release: 1998, actors: ["Jodi Benson", "Pat Carroll", "Buddy Hackett"], rating: 7.6, rated: "PG-6"),
    moviesModel(name: "Mulan", release: 1998, actors: ["Ming-Na Wen", "Eddie Murphy", "Lea Salonga"], rating: 7.6, rated: "PG-6"),
    moviesModel(name: "The Lion King", release: 2011, actors: ["Jermey Irons", "James Earl", "Mathew Brederick"], rating: 8.5, rated: "PG-6"),
    moviesModel(name: "Aladdin", release: 1992, actors: ["Robin Williams", "Scott Weinger","Linda Larkin"], rating: 8.0, rated: "PG-6"),
    moviesModel(name: "Pocahontas", release: 1995, actors: ["Irene Bedard","Mel Gibson","Christian Bale"], rating: 6.7, rated: "PG-6"),
    moviesModel(name: "Moana", release: 2016, actors: ["Auli'i Cravalho", "Dwayne Johnson","Alan Tudyk"], rating: 7.6, rated: "PG-6")
]


