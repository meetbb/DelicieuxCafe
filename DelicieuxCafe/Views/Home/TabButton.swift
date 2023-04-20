//
//  TabButton.swift
//  DelicieuxCafe
//
//  Created by Meet Brahmbhatt on 20/04/23.
//

import SwiftUI

struct TabButton: View {
    var title: String
    @Binding var selected: String
    
    var animation: Namespace.ID

    var body: some View {
        Button(action: {
            withAnimation(.spring()){
                selected = title
            }
        }, label: {
            Text(title).font(.system(size: 15)).fontWeight(.bold).foregroundColor(selected == title ? Color.white : Color(K.COLORS.primaryFontColor))
                .padding(.vertical, 10).padding(.horizontal, selected == title ? 20 : 0)
                .background(
                    ZStack{
                        if selected == title {
                            Color(K.COLORS.primaryColor)
                                .clipShape(Capsule())
                                .matchedGeometryEffect(id: "Tab", in: animation)
                        }
                    }
                )
        })
    }
}
