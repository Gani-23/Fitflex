//
//  Item.swift
//  Fugg*ME
//
//  Created by sai ganesh on 13/10/23.
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
