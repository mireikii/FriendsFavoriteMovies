//
//  ContentView.swift
//  FriendsFavoriteMovies
//
//  Created by Student1 on 28/09/2026.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        
        TabView{
            //Child view one
            Tab("Friends", systemImage: "person.and.person"){
                //Text("Friends")
                FriendList()
            }
            //Child view two (& its own label "movies")
            Tab("Movies", systemImage : "film.stack"){
                //Text("Movies")
                MovieList()
            }
        }
    }
}

#Preview {
    ContentView()
    
        .modelContainer(SampleData.shared.modelContainer)
}
