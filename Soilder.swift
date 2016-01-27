//
//  Enemy.swift
//  rpgoop-exercise-ios-development
//
//  Created by Jason miew on 1/26/16.
//  Copyright © 2016 Jason miew. All rights reserved.
//

import Foundation

class Soilder: Character {
    
    private var MAX_ATTACK = 20
    
    override var attackPwr: Int {
        get {
            return Int(arc4random_uniform(UInt32(MAX_ATTACK)))
        }
    }
    
}