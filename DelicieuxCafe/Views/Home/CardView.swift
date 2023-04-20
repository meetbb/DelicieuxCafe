//
//  CardView.swift
//  DelicieuxCafe
//
//  Created by Meet Brahmbhatt on 20/04/23.
//

import SwiftUI

struct CardView: View {
    var foodItem: FoodItem
    var animation: Namespace.ID
    
    var body: some View {
        VStack {
            HStack {
                Spacer(minLength: 0)
                Text(foodItem.price)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
            }
            Image(foodItem.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "image\(foodItem.id)", in: animation)
                .padding(.top, 30)
                .padding(.bottom)
                .padding(.horizontal, 10)
            Text(foodItem.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .matchedGeometryEffect(id: "title\(foodItem.id)", in: animation)
            Text(foodItem.subTitle)
                .font(.caption)
                .foregroundColor(.gray)
                .matchedGeometryEffect(id: "subtitle\(foodItem.id)", in: animation)
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "suit.heart")
                        .font(.title2)
                        .foregroundColor(.black)
                }).matchedGeometryEffect(id: "heart\(foodItem.id)", in: animation)
                Spacer(minLength: 0)
                Text(foodItem.rating)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .matchedGeometryEffect(id: "rating\(foodItem.id)", in: animation)
            }.padding()
        }.background(Color(foodItem.image).opacity(0.4)
                        .matchedGeometryEffect(id: "color\(foodItem.id)", in: animation))
        .cornerRadius(15)
    }
}
