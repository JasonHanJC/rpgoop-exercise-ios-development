//
//  ViewController.swift
//  rpgoop-exercise-ios-development
//
//  Created by Jason miew on 1/25/16.
//  Copyright © 2016 Jason miew. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var rightAttackBtn: UIButton!
    @IBOutlet weak var rightAttackLbl: UILabel!
    @IBOutlet weak var leftAttackBtn: UIButton!
    @IBOutlet weak var leftAttackLbl: UILabel!
    @IBOutlet weak var printLbl: UILabel!
    
    var attackSound: AVAudioPlayer!
    var soilder: Soilder!
    var orc: Orc!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = NSBundle.mainBundle().pathForResource("attack-sound", ofType: "mp3")
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        do {
            try attackSound = AVAudioPlayer(contentsOfURL: soundUrl)
            attackSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
        soilder = Soilder(attackPwr: 20, hp: 100, name: "Hero")
        orc = Orc(attackPwr: 12, hp: 100, name: "Devil")
        
        printLbl.text = "Begin"
        
    }

    
    @IBAction func rightAttackBtnTapped(sender: AnyObject) {
        playSound()
        
        doAttack(soilder.attackPwr, player: soilder)
    }
    
    @IBAction func leftAttackBtnTapped(sender: AnyObject) {
        playSound()
        
        doAttack(orc.attackPwr, player: orc)
    }
    
    func playSound() {
        attackSound.play()
    }
    
    func doAttack(attackPwr: Int, player: Character) {
        if orc.attemptAttack(attackPwr) {
            printLbl.text = "\(player.name) attacked Soilder for \(attackPwr) HP"
        } else {
            printLbl.text = "Unseccesful Attack"
        }

    }


}

