//
//  Movie.swift
//  FriendsFavoriteMovies
//
//  Created by Student1 on 28/09/2026.
//

import Foundation
import SwiftData

@Model
class Movie{
    var title: String
    var releaseDate: Date
    
    init(title: String, releaseDate: Date){
        self.title = title
        self.releaseDate = releaseDate
    }
    static let sampleData = [
        Movie(title: "Akira",
              releaseDate: Date(timeIntervalSinceReferenceDate: -402_000_000)),
        Movie(title: "Spiderman: Brand New Day",
              releaseDate: Date(timeIntervalSinceReferenceDate: -20_000_000)),
    ]
}
