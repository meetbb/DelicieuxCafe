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
    FoodItem(title: "Black Coffee", subTitle: "Dark like hell", price: "$36", rating: "3.8", image: "p1"),
    FoodItem(title: "Caramel Latte", subTitle: "Rich salted caramel", price: "$45", rating: "4.9", image: "p2"),
    FoodItem(title: "Cuppachino", subTitle: "conversation starter", price: "$84", rating: "4.2", image: "p3"),
    FoodItem(title: "Creamy Latte", subTitle: "indulge in cream", price: "$65", rating: "3.5", image: "p4"),
]
