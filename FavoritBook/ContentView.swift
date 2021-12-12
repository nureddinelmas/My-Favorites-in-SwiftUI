//
//  ContentView.swift
//  FavoritBook
//
//  Created by Nureddin Elmas on 2021-12-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
      
        List {
            
            ForEach(myFavorites) { favorite in
                Section(header: Text(favorite.title)){
                    ForEach (favorite.elements){ element in
                        NavigationLink(destination:DetailsView(chosenFavoriteElement: element)) {
                            Text(element.name)
                        }
//                            Image(element.imageName).resizable().aspectRatio(contentMode: .fit)
//                                .frame(width: UIScreen.main.bounds.width * 0.5 , height: UIScreen.main.bounds.height * 0.09)
                    }
                }
            }
        }.navigationBarTitle(Text("Favorite Book"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
