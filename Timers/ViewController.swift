//
//  ViewController.swift
//  Timers
//
//  Created by Atıl Samancıoğlu on 28/01/2017.
//  Copyright © 2017 Atıl Samancıoğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        counter = 10
        timerLabel.text = String(counter)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunction), userInfo: nil, repeats: true)
        
        
        
    }
    
    func timerFunction() {
        
        // our function for timer
        timerLabel.text = String(counter)
        counter = counter - 1
        
        if counter == 0 {
            timer.invalidate()
            timerLabel.text = "Time is done!"
        }
        
    }
    

}

