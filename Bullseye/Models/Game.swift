//
//  Game.swift
//  Bullseye
//
//  Created by Pixels on 31/08/2024.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    var leaderboadEntries: [LeaderboardEntry] = []
    
    init (loadTestData: Bool = false) {
        if loadTestData {
            addToLeaderboard(score: 100)
            addToLeaderboard(score: 80)
            addToLeaderboard(score: 200)
            addToLeaderboard(score: 50)
            addToLeaderboard(score: 20 )
        }
    }
    
    func points(sliderValue: Int) -> Int {
        if (sliderValue == target) {
            return 200
        }
        else if (abs(target - sliderValue) == 2 || abs(target - sliderValue) == 1) {
            return 100 - abs(target - sliderValue) + 50
        }
        return 100 - abs(target - sliderValue)
    }
    
    mutating func startNewRound(points: Int) {
        round += 1
        score += points
        target  = Int.random(in: 1...100)
        addToLeaderboard(score: score)
    }
    
    mutating func addToLeaderboard(score: Int) {
        leaderboadEntries.append(LeaderboardEntry(score: score, date: Date()))
        leaderboadEntries.sort { entry1, entry2 in
            entry1.score > entry2.score
        }
    }
    
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
}

struct LeaderboardEntry {
    let score: Int
    let date: Date
}
