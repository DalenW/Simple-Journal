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
    public let creationDate: Date
    public var content: String
    
    init(content: String, creationDate: Date = .now) {
        self.content = content
        self.creationDate = creationDate
    }
}
