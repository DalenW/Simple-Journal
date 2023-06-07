//
//  AppTabView.swift
//  Simple Journal
//
//  Created by Dalen Ward on 6/6/23.
//

import SwiftUI

struct AppTabView: View {
    @Binding var selection: AppTabScreen?
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(AppTabScreen.allCases) {
                tab in tab.destination
                    .tag(tab as AppTabScreen?)
                    .tabItem { tab.label }
            }
        }
    }
}

#Preview {
    AppTabView(selection: .constant(.home))
}

