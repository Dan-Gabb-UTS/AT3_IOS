//
//  ContentView.swift
//  AT3_IOS
//
//  Created by Daniel Gabb on 6/5/2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var favouritesModel: FavouritesModel
    var image: Image

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                       // .padding(leading(50))
                    
                    
                    
                    Text("Main Menu")
                        .bold()
                        .font(.title)
                        .padding(EdgeInsets())
                }
                .background(Color.green)

                Spacer()
                
                // This links to the search functionality
                NavigationLink(destination: TextSearchView()) {
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                        Text("Search food near me")
                            .foregroundColor(.white)

                    }
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)

                }
                .padding()

                
                // This links to the favourites list
                NavigationLink(destination: FavouritesView()) {
                    HStack{
                        Image(systemName: "heart.fill")
                            .foregroundColor(.white)
                        Text("Favorite Restaurants")
                            .foregroundColor(.white)

                    }
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)

                }

                .padding()

                Spacer()
            }
                Spacer()
          }
        }
    }

#Preview {
    ContentView(image: Image("Icon"))
}
