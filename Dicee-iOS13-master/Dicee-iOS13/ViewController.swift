//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DiceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!

    @IBOutlet weak var total: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        DiceOne.image = UIImage(imageLiteralResourceName: "DiceSix")
        
        
    }

    @IBAction func buttonPress(_ sender: UIButton) {
        //print("button got pressed.")
        let diceArray = [ UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"),UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix")]
        var x = Int.random(in: 0...5)
        var y = Int.random(in: 0...5)

        DiceOne.image = diceArray[x]
        diceTwo.image = diceArray[y]
        total.text = String(x+y+2)
    }
    
}

