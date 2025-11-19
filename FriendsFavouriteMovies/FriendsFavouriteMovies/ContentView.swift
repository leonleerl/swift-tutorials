//
//  ContentView.swift
//  FriendsFavouriteMovies
//
//  Created by 李润龙 on 19/11/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Friends", systemImage: "person.and.person") {
                FriendList()
            }


            Tab("Movies", systemImage: "film.stack") {
                MovieList()
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}

