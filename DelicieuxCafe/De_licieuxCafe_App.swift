//
//  De_licieuxCafe_App.swift
//  DélicieuxCafé
//
//  Created by Meet Brahmbhatt on 14/04/23.
//

import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
}

@main
struct De_licieuxCafe_App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ViewManager()                
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
