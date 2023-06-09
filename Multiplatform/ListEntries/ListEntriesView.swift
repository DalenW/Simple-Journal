//
//  ListEntriesView.swift
//  Simple Journal
//
//  Created by Dalen Ward on 6/7/23.
//

import SwiftUI
import SwiftData


struct ListEntriesView: View {
    @Environment(\.modelContext) private var modelContext
    
    @Query private var journalEntries: [JournalEntry]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    List {
                        ForEach(journalEntries) { entry in
                            EntryListItemView(entry: entry)
                        }
                    }
                }
            }.navigationTitle("Entries")
        }
    }
}

#Preview {
    ListEntriesView()
}
