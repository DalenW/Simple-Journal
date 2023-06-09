//
//  EntryListItemView.swift
//  Simple Journal
//
//  Created by Dalen Ward on 6/9/23.
//

import SwiftUI

struct EntryListItemView: View {
    var entry: JournalEntry
    
    var body: some View {
        NavigationLink(destination: EntryView(journalEntry: entry)) {
            Text(entry.content)
        }
    }
}

#Preview {
    EntryListItemView(entry: SampleEntries.entries[0])
}
