//
//  PageView.swift
//  DélicieuxCafé
//
//  Created by Meet Brahmbhatt on 15/04/23.
//

import SwiftUI

struct PageView: View {
    var currentPage: Page
    
    var body: some View {
        ZStack {
            VStack {
                Image(currentPage.imageUrl)
                    .resizable()
                    .scaledToFit()
                    .padding()
                Text(currentPage.name)
                    .font(.title)
                Text(currentPage.description)
                    .font(.subheadline)
                    .frame(width: 300)
            }
        }
        .background(Color(K.COLORS.primaryColor))
    }
}
