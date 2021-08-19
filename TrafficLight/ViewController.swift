//
//  ViewController.swift
//  TrafficLight
//
//  Created by Gleb on 19.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightLabel: UIView!
    @IBOutlet weak var yellowLightLabel: UIView!
    @IBOutlet weak var greenLightLabel: UIView!
    @IBOutlet weak var startBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightLabel.layer.cornerRadius = 70
        yellowLightLabel.layer.cornerRadius = 70
        greenLightLabel.layer.cornerRadius = 70
        
        startBtn.layer.cornerRadius = 10
    }

    
    @IBAction func clickStartBtn() {
        if startBtn.currentTitle == "START" {
            redLightLabel.alpha = 1
            startBtn.setTitle("NEXT", for: .normal)
            
            
            return
        }
        
        if redLightLabel.alpha == 1 {
            redLightLabel.alpha = 0.3
            yellowLightLabel.alpha = 1
            
            return
        }
        
        if yellowLightLabel.alpha == 1 {
            yellowLightLabel.alpha = 0.3
            greenLightLabel.alpha = 1
            
            return
        }
        
        if greenLightLabel.alpha == 1 {
            greenLightLabel.alpha = 0.3
            redLightLabel.alpha = 1
            
            return
        }
    }
    
}

