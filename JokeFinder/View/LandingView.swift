//
//  LandingView.swift
//  JokeFinder
//
//  Created by Xinchen Ji on 2025-04-03.
//

import SwiftUI
 
struct LandingView: View {
    
    // MARK: Stored properties
    @State var currentTab = 0
    
    // MARK: Computed properties
    var body: some View {
        TabView(selection: $currentTab) {
            
            JokeView()
                .tabItem {
                    Label {
                        Text("New Jokes")
                    } icon: {
                        Image(systemName: "smiley")
                    }
                    
                }
                .tag(1)
            
            FavouriteJokesView()
                .tabItem {
                    Label {
                        Text("Favourites")
                    } icon: {
                        Image(systemName: "heart.fill")
                    }
                    
                }
                .tag(2)
            
        }
    }
}
 
#Preview {
    LandingView()
        .environment(JokeViewModel())
}
