//
//  Player.swift
//  rpgoop-exercise-ios-development
//
//  Created by Jason miew on 1/26/16.
//  Copyright © 2016 Jason miew. All rights reserved.
//

import Foundation

class Orc: Character {
    
    var IMMUNE_MAX = 10
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr <= IMMUNE_MAX {
            return false
        } else {
            super.attemptAttack(attackPwr)
        }
        
        return true
    }
    
}