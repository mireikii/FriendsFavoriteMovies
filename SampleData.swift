//
//  SampleData.swift
//  FriendsFavoriteMovies
//
//  Created by Student1 on 28/09/2026.
//


import Foundation
import SwiftData
import SwiftUI

@MainActor
class SampleData{ //sample friends and movies
    static let shared = SampleData()
    
    let modelContainer: ModelContainer //To eliminate the need to create separate sample data for each view
    //This is a constant property to hold the model container
    var context: ModelContext{
        modelContainer.mainContext
    }
    
   private init(){ //private so that the instances are only created from within the SampleData class
        let schema = Schema([ //shema connects the classes defined in code to the data in the data store
            Friend.self,
            Movie.self,
                            ])
        let modelConfiguration = ModelConfiguration(schema: schema,isStoredInMemoryOnly: true)
        
       do{
           modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
           //Passes schema and specifies that it should store data in memory without persisting it
           insertSampleData()
           try context.save()
       }catch{
            //use fatal error to terminate app
            fatalError("Could not create ModelContainer: \(error)")
        }
    }
    private func insertSampleData(){
        //for-in loop similar to ForEach
       for friend in Friend.sampleData {  
            context.insert(friend) //model tracks sample friends
        }
        for movie in Movie.sampleData{
            context.insert(movie)
        }
    }
}
