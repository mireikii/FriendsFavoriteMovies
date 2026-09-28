//
//  MovieList.swift
//  FriendsFavoriteMovies
//
//  Created by Student1 on 28/09/2026.
//

import SwiftUI
import SwiftData

struct MovieList: View{
    @Query(sort: \Movie.title) private var movies: [Movie]
    // @Query gets an array of Friend instances
    //Query fetches data from model context and updates the view as it changes
    @Environment(\.modelContext) private var context
    //To access global information
    var body: some View{
        NavigationSplitView{
            List{
                ForEach(movies){ movie in
                    NavigationLink(movie.title){
                        Text("Detail view for \(movie.title)")
                            .navigationTitle("Movie")
                            .navigationBarTitleDisplayMode(.inline)
                    }
                }
            }
            .navigationTitle("Movies")
        }detail:{
            Text("Select a movie")
                .navigationTitle("Movie")
                .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview{
        MovieList()
        .modelContainer(SampleData.shared.modelContainer)
}
