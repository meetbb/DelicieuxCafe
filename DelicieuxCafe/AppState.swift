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
    }
    
    @Published var switchView = CurrentView.introduction
}
