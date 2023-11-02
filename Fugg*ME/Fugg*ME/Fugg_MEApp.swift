//
//  Fugg_MEApp.swift
//  Fugg*ME
//
//  Created by sai ganesh on 13/10/23.
//

import SwiftUI
import SwiftData

@main
struct Fugg_MEApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            feed()
        }
        .modelContainer(sharedModelContainer)
    }
}
