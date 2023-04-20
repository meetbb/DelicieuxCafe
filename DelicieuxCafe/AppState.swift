//
//  AppState.swift
//  DelicieuxCafe
//
//  Created by Meet Brahmbhatt on 16/04/23.
//

import Foundation

class AppState: ObservableObject {
    enum CurrentView: Int {
        case introduction
        case login
        case registration
        case homescreen
    }
    
    @Published var switchView = CurrentView.login
}
