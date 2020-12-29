//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")] //let makes diceArray a constant (var is for variable)
    
    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //var leftDiceNumber = 1
    //var rightDiceNumber = 5
    
   /* override func viewDidLoad() {
        super.viewDidLoad()
        
        //WHO          WHAT    VALUE
    //    diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
    //    diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
    } */

    //MARK: - Roll Button Methods
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        changeDiceFace()
        
    }
    
    func changeDiceFace() {
            
            diceImageView1.image = diceArray.randomElement()    //same as below; picks a random elem from diceArray
            //   diceImageView1.image = diceArray[Int.random(in: 0...5)]
            diceImageView2.image = diceArray.randomElement()    //same as below; picks a random elem from diceArray
            //   diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
            //   print("leftDiceNumber at beginning = \(leftDiceNumber)")
            //   print("rightDiceNumber at beginning = \(rightDiceNumber)")
         
            
         //   leftDiceNumber += 1
         //   print("leftDiceNumber at the end = \(leftDiceNumber)")
         //   rightDiceNumber -= 1
         //   print("rightDiceNumber at the end = \(rightDiceNumber)")
        
    }
    
    //TODO: Add Shake Gesture Handling
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        changeDiceFace()
        
    }   //motionEnded func runs when the user stops shaking their phone
    
}

