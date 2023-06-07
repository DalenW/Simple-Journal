//
//  TabScreen.swift
//  Simple Journal
//
//  Created by Dalen Ward on 6/6/23.
//

import SwiftUI

enum AppTabScreen: Codable, Hashable, Identifiable, CaseIterable {
    case home
    case entries
    case create
    case content
    case account
    
    var id: AppTabScreen { self } // no idea what this does
}

extension AppTabScreen {
    @ViewBuilder
    var label: some View {
        switch self {
        case .home:
            Label("Home", systemImage: "home")
        case .entries:
            Label("Entries", systemImage: "list")
        case .create:
            Label("Create", systemImage: "plus")
        case .content:
            Label("Content", systemImage: "leaf")
        case .account:
            Label("Account", systemImage: "person.crop.circle")
        }
    }
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .home:
            Label("Home", systemImage: "home")
        case .entries:
             ListEntriesView().modelContainer(for: JournalEntry.self, inMemory: false)
        case .create:
            CreateEntryView()
        case .content:
            Label("Content", systemImage: "leaf")
        case .account:
            Label("Account", systemImage: "person.crop.circle")
        }
    }
}
