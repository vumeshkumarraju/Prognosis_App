//
//  prognosis_App.swift
//  prognosis+
//
//  Created by UMESH KUMAR on 15/08/23.
//

import SwiftUI

@main
struct prognosis_App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
