//
//  BirthdayApp.swift
//  Birthday
//
//  Created by 李润龙 on 19/11/2025.
//

import SwiftUI
import SwiftData

@main
struct BirthdayApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
}
