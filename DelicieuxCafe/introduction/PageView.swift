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
            VStack {
                Image(currentPage.imageUrl)
                    .resizable()
                    .scaledToFit()
                    .padding()
                Text(currentPage.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(K.COLORS.primaryFontColor))
                    .frame(width: UIScreen.main.bounds.size.width - 50, alignment: .leading)
                    .padding(.bottom, 10)
                Text(currentPage.description)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .frame(width: UIScreen.main.bounds.size.width - 50, alignment: .leading)
                    .foregroundColor(Color(K.COLORS.primaryFontColor))
                    .padding(.bottom, 10)
            }        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(currentPage: Page.samplePages[2])
    }
}
