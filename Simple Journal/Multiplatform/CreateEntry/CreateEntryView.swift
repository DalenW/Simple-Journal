//
//  CreateEntryView.swift
//  Simple Journal
//
//  Created by Dalen Ward on 6/6/23.
//

import SwiftUI
import SwiftData

struct CreateEntryView: View {
    @State private var entryText: String = "This is some editable text..."
    // @State private var text: String = ""
    
    @Environment(\.modelContext) private var journalEntries
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextEditor(text: $entryText)
                }
                
                Section {
                    Button(action: {
                        // Add Journal Entry
                        journalEntries.insert(
                            JournalEntry(content: entryText)
                        )
                    }, label: {
                        Text("Save")
                            .frame(
                                maxWidth: .infinity,
                                alignment: .center
                            )
                    })
                    .frame(
                        maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                        alignment: .center
                    )
                }
            }
            .navigationTitle("Create")
        }
    }
}

#Preview {
    CreateEntryView()
}
