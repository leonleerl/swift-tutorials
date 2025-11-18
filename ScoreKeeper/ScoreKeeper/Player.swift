//
//  Player.swift
//  ScoreKeeper
//
//  Created by 李润龙 on 18/11/2025.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()
    var name: String
    var score: Int
}
