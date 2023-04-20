//
//  PageModel.swift
//  DélicieuxCafé
//
//  Created by Meet Brahmbhatt on 15/04/23.
//

import SwiftUI

struct Page: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(name: "Title Example", description: "This is a sample description", imageUrl: "coffee_shop", tag: 0)
    
    static var samplePages: [Page] = [
        Page(name: "Welcome to Délicieux Café", description: "The best place to work/hangout, eat, date and much more.", imageUrl: "coffee_shop", tag: 0),
        Page(name: "Welcome to Délicieux Café", description: "The best place to work/hangout, eat, date and much more.", imageUrl: "coffee_shop", tag: 1),
        Page(name: "Welcome to Délicieux Café", description: "The best place to work/hangout, eat, date and much more.", imageUrl: "coffee_shop", tag: 2),
        Page(name: "Welcome to Délicieux Café", description: "The best place to work/hangout, eat, date and much more.", imageUrl: "coffee_shop", tag: 3)
    ]
}
