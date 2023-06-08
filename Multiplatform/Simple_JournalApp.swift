//
//  Simple_JournalApp.swift
//  Simple Journal
//
//  Created by Dalen Ward on 6/6/23.
//

import SwiftUI
import SwiftData

@main
struct Simple_JournalApp: App {
    
    let dataConfiguration = ModelConfiguration(inMemory: true, readOnly: false)

    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(
                    for: JournalEntry.self
                )
        }
    }
}
