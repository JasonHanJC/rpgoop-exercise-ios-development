//
//  Character.swift
//  rpgoop-exercise-ios-development
//
//  Created by Jason miew on 1/25/16.
//  Copyright © 2016 Jason miew. All rights reserved.
//

import Foundation

class Character {
    
    private var _attackPwr: Int = 10
    private var _hp: Int = 100
    private var _name: String = "NoName"
    
    var name: String {
        get {
            return _name
        }
    }
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    
    var isAlive: Bool {
        if hp <= 0 {
            return false
        } else {
            return true
        }
    }
    
    init(attackPwr: Int, hp: Int, name: String) {
        self._attackPwr = attackPwr
        self._hp = hp
        self._name = name
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        return true
    }
    
    
}