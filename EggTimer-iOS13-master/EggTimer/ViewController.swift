//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    let eggTimes = ["Soft": 3, "Medium": 420, "Hard": 720]
    
    
    var timePassed = 0
    
    var timer = Timer()
    var totalTime = 0
    
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        progressBar.progress = 0.0
        timePassed = 0
        let hardness = sender.currentTitle!
        titleLabel.text = hardness
        timer.invalidate()
        totalTime = eggTimes[hardness]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
    
        
    }
        
    
    @objc func updateCounter() {
        //example functionality
        if totalTime > timePassed {
            print("\(timePassed) passed")
            timePassed += 1
            progressBar.progress = Float(timePassed)/Float(totalTime)        }
        else{
            timer.invalidate()
            titleLabel.text = "DONE"
        }
    }


}
