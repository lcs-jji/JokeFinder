//
//  FavouriteJokeView.swift
//  JokeFinder
//
//  Created by Xinchen Ji on 2025-04-03.
//

import SwiftUI
 
struct FavouriteJokesView: View {
    
    // MARK: Stored properties
     
    // Access the view model from the environment
    @Environment(JokeViewModel.self) var viewModel
     
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            
            ZStack {
                
                // Background layer
                Color.forFavouriteJokes
                    .ignoresSafeArea()
                 
                // Foreground layer
                
                VStack {
                    // When there are no saved jokes...
                    if viewModel.favouriteJokes.isEmpty {
                        
                        // ... show an appropriate message
                        ContentUnavailableView(
                            "No favourite jokes",
                            systemImage: "heart.slash",
                            description: Text("See if a new joke might tickle your funny bone!")
                        )
                        
                    } else {
                        
                        // Show a scrollable list of saved jokes
                        List(viewModel.favouriteJokes) { currentJoke in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(currentJoke.setup ?? "")
                                Text(currentJoke.punchline ?? "")
                                    .italic()
                            }
                            .swipeActions {
                                
                                // Delete
                                Button("Delete", role: .destructive) {
                                    withAnimation {
                                        viewModel.delete(currentJoke)
                                    }
                                }
                                
                            }
                        }
                        .listStyle(.plain)
                        
                    }
                    Text("This will show saved jokes.")
                }
                .navigationTitle("Favourites")
                
            }
        }
    }
}
 
#Preview {
    FavouriteJokesView()
        .environment(JokeViewModel())
}
