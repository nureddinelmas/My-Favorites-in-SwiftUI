//
//  DetailsView.swift
//  FavoritBook
//
//  Created by Nureddin Elmas on 2021-12-12.
//

import SwiftUI

struct DetailsView: View {
   @State var chosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack{
       
        Image(chosenFavoriteElement.imageName).resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 1.9, height: UIScreen.main.bounds.height * 0.1, alignment: Alignment.center)
            
            Text(chosenFavoriteElement.name).font(.largeTitle).padding()
            
            Text(chosenFavoriteElement.description)
            
        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavoriteElement: mjolby)
    }
}
