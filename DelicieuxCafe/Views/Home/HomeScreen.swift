//
//  HomeScreen.swift
//  DelicieuxCafe
//
//  Created by Meet Brahmbhatt on 20/04/23.
//

import SwiftUI

var foodOptions = ["Beverages", "Sandwiches", "Salads", "Healthy"]

struct HomeScreen: View {
    @State var selectedTab = foodOptions[0]
    @Namespace var animation
    @State var show = false
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: {}, label: {
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 25, weight: .heavy))
                            .foregroundColor(Color(K.COLORS.primaryFontColor))
                    })
                    Spacer(minLength: 0)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "cart")
                            .font(.system(size: 25, weight: .heavy))
                            .foregroundColor(Color(K.COLORS.primaryFontColor))
                    })
                }.padding(.vertical, 10).padding(.horizontal)
                ScrollView {
                    VStack {
                        HStack {
                            VStack(alignment: .leading, spacing: 5, content: {
                                Text("Let's").font(.title).foregroundColor(Color(K.COLORS.primaryFontColor))
                                Text("Get Started").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color(K.COLORS.primaryFontColor))
                            }).padding(.horizontal)
                            Spacer(minLength: 0)
                        }
                        HStack(spacing: 0) {
                            ForEach(foodOptions, id: \.self, content: { tab in
                                TabButton(title: tab, selected: $selectedTab, animation: animation)
                                if foodOptions.last != tab{
                                    Spacer(minLength: 0)
                                }
                            })
                        }.padding().padding(.top, 5)
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 25, content: {
                            Text("Placeholder")
                            Text("Placeholder")
                        })
                    }
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
