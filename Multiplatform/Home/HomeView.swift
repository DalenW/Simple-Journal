//
//  HomeView.swift
//  Simple Journal
//
//  Created by Dalen Ward on 6/7/23.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @Query private var journalEntries: [JournalEntry]
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        if let firstEntry = journalEntries.first {
            Text(firstEntry.content)
        }
    }
}

#Preview {
    HomeView()
}
