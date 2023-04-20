//
//  FoodDetailView.swift
//  DelicieuxCafe
//
//  Created by Meet Brahmbhatt on 20/04/23.
//

import SwiftUI

struct FoodDetailView: View {
    @Binding var selectedItem: FoodItem
    @Binding var show: Bool
    var animation: Namespace.ID
    @State var loadContent: Bool = false
    
    var body: some View {
        VStack {
            HStack(spacing: 25) {
                ActionButton(imageName: "chevron.left", clickAction: {
                    withAnimation(.spring()) {
                        show.toggle()
                    }
                })
                Spacer()
                ActionButton(imageName: "magnifyingglass", clickAction: {})
                ActionButton(imageName: "bag", clickAction: {})
            }
            .padding(.horizontal, 30)
            .padding(.top, 20)
            VStack(spacing: 10) {
                Image(selectedItem.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .matchedGeometryEffect(id: "image\(selectedItem.id)", in: animation)
                    .padding()
                Text(selectedItem.title)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                Text(selectedItem.subTitle)
                    .foregroundColor(.gray)
                    .padding(.top, 4)
                HStack {
                    Text(selectedItem.rating)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .matchedGeometryEffect(id: "rating\(selectedItem.id)", in: animation)
                    Spacer(minLength: 0)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "suit.heart")
                            .font(.title2)
                            .foregroundColor(.black)
                    })
                    .matchedGeometryEffect(id: "heart\(selectedItem.id)", in: animation)
                }.padding()
            }
            .padding(.top, 35)
            .padding(.horizontal, 25)
            .background(Color(selectedItem.image).opacity(0.4)
                            .clipShape(CustomShape())
                            .matchedGeometryEffect(id: "color\(selectedItem.id)", in: animation))
            .cornerRadius(15)
            .padding(.horizontal, 10)
            VStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Exclusive Offer")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    Text("Get a cheese cake for $35(it's 50% off)")
                        .foregroundColor(.gray)
                }
                .padding(.vertical)
                .padding(.horizontal, 10)
                .frame(width: UIScreen.main.bounds.width - 20, alignment: .leading)
                .background(Color("p1").opacity(0.4))
                .cornerRadius(15)
            }
            .padding(.top, 10)
            .frame(width: UIScreen.main.bounds.width - 20, height: loadContent ? nil : 0)
            .opacity(loadContent ? 1 : 0)
            Spacer(minLength: 0)
        }
        .onAppear {
            withAnimation(Animation.spring().delay(0.45)) {
                loadContent.toggle()
            }
        }
    }
}

struct ActionButton: View {
    var imageName: String
    var clickAction: () -> Void
    var body: some View {
        Button(action: clickAction, label: {
            Image(systemName: imageName)
                .font(.title)
                .foregroundColor(.black)
        })
    }
}

