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
    
    private let lightIsOn: CGFloat = 1
    private let lightisOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightLabel.layer.cornerRadius = 70
        yellowLightLabel.layer.cornerRadius = 70
        greenLightLabel.layer.cornerRadius = 70
        
        startBtn.layer.cornerRadius = 10
    }

    
    @IBAction func clickStartBtn() {
        if startBtn.currentTitle == "START" {
            redLightLabel.alpha = lightIsOn
            startBtn.setTitle("NEXT", for: .normal)
            
            return
        }
        
        if redLightLabel.alpha == lightIsOn {
            redLightLabel.alpha = lightisOff
            yellowLightLabel.alpha = lightIsOn
            
            return
        }
        
        if yellowLightLabel.alpha == lightIsOn {
            yellowLightLabel.alpha = lightisOff
            greenLightLabel.alpha = lightIsOn
            
            return
        }
        
        if greenLightLabel.alpha == lightIsOn {
            greenLightLabel.alpha = lightisOff
            redLightLabel.alpha = lightIsOn
            
            return
        }
    }
    
}

