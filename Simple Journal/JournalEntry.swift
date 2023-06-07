//
//  JournalEntry.swift
//  Simple Journal
//
//  Created by Dalen Ward on 6/6/23.
//

import Foundation
import SwiftData

@Model
class JournalEntry {
    let date: Date = Date();
    // @Attribute(.unique) var id: String;
    var content: String = "";
    
    
    init(content: String) {
        self.content = content;
    }
}
