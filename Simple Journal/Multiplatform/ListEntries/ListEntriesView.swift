//
//  ListEntriesView.swift
//  Simple Journal
//
//  Created by Dalen Ward on 6/7/23.
//

import SwiftUI
import SwiftData

struct ListEntriesView: View {
    @Query var allJournalEntries: [JournalEntry]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(allJournalEntries) {
                    entry in Text(entry.content)
                }
            }
        }
    }
}

#Preview {
    ListEntriesView()
}
