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
    
    init() {
        isLaunchedBefore
    }
    
    @Published var switchView = CurrentView.introduction
    
    var isLaunchedBefore: Void {
        let isLaunchedBefore = UserDefaults.standard.bool(forKey: K.KEYS.isLaunchedBefore)
        self.switchView = isLaunchedBefore ? CurrentView.login : CurrentView.introduction
    }
}
