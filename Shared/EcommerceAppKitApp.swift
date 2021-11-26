//
//  EcommerceAppKitApp.swift
//  Shared
//
//  Created by Andrei Kamarou on 27.11.21.
//

import SwiftUI

@main
struct EcommerceAppKitApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
