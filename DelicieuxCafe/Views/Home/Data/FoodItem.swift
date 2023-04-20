//
//  FoodItem.swift
//  DelicieuxCafe
//
//  Created by Meet Brahmbhatt on 20/04/23.
//

import SwiftUI

struct FoodItem: Identifiable {
    var id = UUID().uuidString
    var title: String
    var subTitle: String
    var price: String
    var rating: String
    var image: String
}

var foodItems = [
    FoodItem(title: "Black Coffee", subTitle: "Dark like hell", price: "$36", rating: "3.8", image: "black_coffee"),
    FoodItem(title: "Caramel Latte", subTitle: "Rich salted caramel", price: "$45", rating: "4.9", image: "black_coffee"),
    FoodItem(title: "Cuppachino", subTitle: "conversation starter", price: "$84", rating: "4.2", image: "black_coffee"),
    FoodItem(title: "Creamy Latte", subTitle: "indulge in cream", price: "$65", rating: "3.5", image: "black_coffee"),
]
