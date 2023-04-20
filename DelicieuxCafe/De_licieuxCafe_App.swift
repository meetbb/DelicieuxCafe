//
//  De_licieuxCafe_App.swift
//  DélicieuxCafé
//
//  Created by Meet Brahmbhatt on 14/04/23.
//

import SwiftUI

@main
struct De_licieuxCafe_App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
