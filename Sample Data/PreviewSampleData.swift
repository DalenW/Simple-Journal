//
//  PreviewSampleData.swift
//  Simple Journal
//
//  Created by Dalen Ward on 6/7/23.
//

import SwiftData

@MainActor
let previewContainer: ModelContainer = {
    do {
        let container = try ModelContainer(for: JournalEntry.self, ModelConfiguration(inMemory: true))
        for entry in SampleEntries.entries {
            container.mainContext.insert(object: entry)
        }
        
        return container
    } catch {
        fatalError("Failed to create container")
    }
}()
