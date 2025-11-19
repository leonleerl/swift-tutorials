//
//  Friend.swift
//  Birthday
//
//  Created by 李润龙 on 19/11/2025.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    var birthday: Date
    
    init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }
    
    var isBirthdayToday: Bool {
        Calendar.current.isDateInToday(birthday)
    }
}
