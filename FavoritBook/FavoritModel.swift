//
//  FavoritModel.swift
//  FavoritBook
//
//  Created by Nureddin Elmas on 2021-12-12.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
    
}

struct FavoriteElements : Identifiable {
    
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
    
}


// Cities
let mjolby = FavoriteElements(name: "Mjölby", imageName: "mjölby", description: "bu sehir iyi")
let stockholm = FavoriteElements(name: "Stockholm", imageName: "stockholm", description: "bu sehir iyi")
let malmo = FavoriteElements(name: "Malmö", imageName: "malmö", description: "bu sehir iyi")
let goteborg = FavoriteElements(name: "Göteborg", imageName: "göteborg", description: "bu sehir iyi")
let kalmar = FavoriteElements(name: "Kalmar", imageName: "göteborg", description: "Burasi Kalmar")
let favoriteCities = FavoriteModel(title: "Cities", elements: [mjolby, stockholm, malmo, goteborg, kalmar])


// Books
let kendiniaffet = FavoriteElements(name: "Kendini Affet", imageName: "mjölby", description: "bu sehir iyi")
let birakverahatla = FavoriteElements(name: "Birak ve Rahatla", imageName: "stockholm", description: "bu sehir iyi")
let edinerekogrenme = FavoriteElements(name: "Edinerek Ogrenme", imageName: "malmö", description: "bu sehir iyi")
let kaderinyolu = FavoriteElements(name: "Kaderin Yolu", imageName: "göteborg", description: "bu sehir iyi")


let favoriteBooks = FavoriteModel(title: "Books", elements: [kendiniaffet, birakverahatla, edinerekogrenme, kaderinyolu])


let myFavorites = [favoriteCities,favoriteBooks]
