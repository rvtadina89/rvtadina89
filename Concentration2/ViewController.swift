//
//  ViewController.swift
//  Concentration2
//
//  Created by Arvie Tadina on 3/5/19.
//  Copyright © 2019 Arvie Tadina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0{
        didSet{
           flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["😅", "😎", "😇", "🤩", "🥳", "🤓"]
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        //print("sorry")
        flipCount += 1
        //flipCard(withEmoji: "😅", on: sender)
        if let cardNumber = cardButtons.index(of: sender) {
            //print("cardNumber = \(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("Chosen card was not in carButton")
        }
        
    }
    
    
    
//    @IBAction func touchSecondCard(_ sender: UIButton) {
//        flipCount += 1
//        flipCard(withEmoji: "😎", on: sender)
//    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        //print("flipCard(withEmoji: \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.9568627451, alpha: 1)
        }
    }
}

