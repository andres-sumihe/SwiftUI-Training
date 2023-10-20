//
//  PersonalSpaceApp.swift
//  PersonalSpace
//
//  Created by P090MMCTSE010 on 20/10/23.
//

import SwiftUI
import SwiftData

@main
struct PersonalSpaceApp: App {
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
//            ContentView()
            WelcomeView()
        }
        .modelContainer(sharedModelContainer)
    }
}
