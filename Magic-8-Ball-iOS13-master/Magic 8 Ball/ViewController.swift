//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
                
class ViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    let  balls = [ #imageLiteral(resourceName: "ball1") , #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball5"), #imageLiteral(resourceName: "ball5")  ]
    
  
    
    
    @IBAction func IBAction(_ sender: Any) {
        image.image = balls[Int.random(in: 0...4)]
    }
    
}

