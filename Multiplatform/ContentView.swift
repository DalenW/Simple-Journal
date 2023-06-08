//
//  ContentView.swift
//  Simple Journal
// The main view
//
//  Created by Dalen Ward on 6/6/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var selection: AppTabScreen? = .home
    
    var body: some View {
        AppTabView(selection: $selection)
    }
}

#Preview {
    ContentView()
}
