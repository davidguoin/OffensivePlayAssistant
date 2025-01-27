//
//  Play.swift
//  OffensivePlayAssistant
//
//  Created by Lori Lookliss on 1/26/25.
//

import Foundation

struct Play: Codable {
    var down: Int
    var distance: Int
    var yardLine: Int
    var hashLocation: String
    var quarter: Int
    var teamScore: Int
    var opponentScore: Int
    var yardageGained: Int
    var playType: String
}
