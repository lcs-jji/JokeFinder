//
//  FavouriteJokeView.swift
//  JokeFinder
//
//  Created by Xinchen Ji on 2025-04-03.
//

import SwiftUI
 
struct FavouriteJokesView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("This will show saved jokes.")
            }
            .navigationTitle("Favourites")
        }
    }
}
 
#Preview {
    FavouriteJokesView()
}
