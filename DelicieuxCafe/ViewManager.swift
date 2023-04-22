//
//  ViewManager.swift
//  DelicieuxCafe
//
//  Created by Meet Brahmbhatt on 16/04/23.
//

import SwiftUI

struct ViewManager: View {
    @StateObject var appState = AppState()
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))    
    var pageActionReceiver = PageActionReceiver()
    var pageActionInvoker = PageActionInvoker()
    
    var body: some View {
        Group {
            switch (appState.switchView) {
            case .introduction:
                IntroductionView().environmentObject(appState)
                    .environmentObject(pageActionReceiver)
                    .environmentObject(pageActionInvoker)
                    .transition(transition)
            case .login:
                LoginScreen().environmentObject(appState).transition(transition)
            case .registration:
                HomeScreen().environmentObject(appState).transition(transition)
//                RegistrationView(showRegistration: true).environmentObject(appState).transition(transition)
            case .homescreen:
                HomeScreen().environmentObject(appState).transition(transition)
            }
        }
    }
}
