//
//  ViewController.swift
//  Zar Uygulaması
//
//  Created by GBGYP-4 on 3.05.2018.
//  Copyright © 2018 LeakCorp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDiceImageView: UIImageView!
    @IBOutlet weak var secondDiceImageView: UIImageView!
    let diceSurfece = [ #imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder()
        }
    
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            rolltapped()
        }
    }
    
    @IBOutlet weak var rollbutton: UIButton!
    
    @IBAction func rolltapped() {
        let diceFirst = Int (arc4random_uniform(6) )
        let diceSecond = Int (arc4random_uniform(6) )
        
        firstDiceImageView.image   = diceSurfece[diceFirst]
        secondDiceImageView.image = diceSurfece[diceSecond]

    }
    
   

}

