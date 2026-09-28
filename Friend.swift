//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by Student1 on 28/09/2026.
//
import Foundation
import SwiftData

@Model
class Friend{
    var name: String
    
    init(name: String){
        self.name = name //self refers to the instance of the friend being initialised
    }
    
    //Array to hold some friends
    
    static let sampleData = [
        Friend(name: "Peace"),
        Friend(name: "Chantal"),
        Friend(name: "Maureen"),
        Friend(name: "Imani"),
        Friend(name: "Wanja")
    ]
}
