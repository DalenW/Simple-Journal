//
//  Item.swift
//  Simple Journal
//
//  Created by Dalen Ward on 6/6/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}