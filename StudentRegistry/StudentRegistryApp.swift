//
//  StudentRegistryApp.swift
//  StudentRegistry
//
//  Created by Simone Sarnataro on 19/06/25.
//

import SwiftUI
import SwiftData

@main
struct StudentRegistryApp: App {
//    var sharedModelContainer: ModelContainer = {
//        let schema = Schema([
//            Item.self,
//        ])
//        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
//
//        do {
//            return try ModelContainer(for: schema, configurations: [modelConfiguration])
//        } catch {
//            fatalError("Could not create ModelContainer: \(error)")
//        }
//    }()

    var body: some Scene {
        WindowGroup {
            ClassListView()
        }
//        .modelContainer(sharedModelContainer)
    }
}
