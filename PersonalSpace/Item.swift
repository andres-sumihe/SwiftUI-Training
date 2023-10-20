//
//  Item.swift
//  PersonalSpace
//
//  Created by P090MMCTSE010 on 20/10/23.
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
