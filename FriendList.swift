//
//  FriendList.swift
//  FriendsFavoriteMovies
//
//  Created by Student1 on 28/09/2026.
//

import SwiftUI
import SwiftData

struct FriendList: View{
    @Query(sort: \Friend.name) private var friends: [Friend]
    // @Query gets an array of Friend instances
    //Query fetches data from model context and updates the view as it changes
    @Environment(\.modelContext) private var context
    //To access global information
    
    var body: some View{
        NavigationSplitView{
            List{
                ForEach(friends){ friend in
                    NavigationLink(friend.name){
                        Text("Detail view for \(friend.name)")
                            .navigationTitle("Friend")
                            .navigationBarTitleDisplayMode(.inline)
                    }
                }
            }
            .navigationTitle("Friends")
        } detail:{
            Text("Select a friend")
                .navigationTitle(Text("Friend"))
                .navigationBarTitleDisplayMode(.inline)
        }
        /* .task{
            //Friend instances
            context.insert(Friend(name:"Peace"))
            context.insert(Friend(name: "Chantal"))
            context.insert(Friend(name: "Maureen"))
            context.insert(Friend(name: "Imani"))
        }*/
    }
}

#Preview{
    FriendList()
        .modelContainer(SampleData.shared.modelContainer)
}
