//
//  PageModel.swift
//  DélicieuxCafé
//
//  Created by Meet Brahmbhatt on 15/04/23.
//

import SwiftUI

struct Page: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(name: "Title Example", description: "This is a sample description", imageUrl: "coffee_shop", tag: 0)
    
    static var samplePages: [Page] = [
        Page(name: "Welcome to Délicieux Café", description: "The best place to work/hangout, eat, date and much more.", imageUrl: "coffee_shop", tag: 0),
        Page(name: "Drink, Eat, Work, Repeat..", description: "Come with your laptop and work in deeply focused environment.", imageUrl: "work_from_cafe", tag: 1),
        Page(name: "Treats for Sweet Tooth", description: "We recommend you to taste some of the smoothest cakes in town.", imageUrl: "cake_server", tag: 2),
        Page(name: "We love Joey", description: "Hey! Haay yu doin? Eat a lot of sandwiches and body shaming people too.", imageUrl: "sandwiches", tag: 3)
    ]
}
