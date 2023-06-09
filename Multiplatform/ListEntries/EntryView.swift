//
//  EntryView.swift
//  Simple Journal
//
//  Created by Dalen Ward on 6/9/23.
//

import SwiftUI

struct EntryView: View {
    var journalEntry: JournalEntry
    
    var body: some View {
        Text(journalEntry.creationDate.formatted())
        
        Spacer()
        
        Text(journalEntry.content)
    }
}

#Preview {
    EntryView(journalEntry: SampleEntries.entries[0])
}
