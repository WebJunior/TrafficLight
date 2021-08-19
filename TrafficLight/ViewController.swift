//
//  ViewController.swift
//  TrafficLight
//
//  Created by Глеб Mr on 19.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightLabel: UIView!
    @IBOutlet weak var yellowLightLabel: UIView!
    @IBOutlet weak var greenLightLabel: UIView!
    @IBOutlet weak var startBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightLabel.layer.cornerRadius = 80
        yellowLightLabel.layer.cornerRadius = 80
        greenLightLabel.layer.cornerRadius = 80
        
        startBtn.layer.cornerRadius = 10
    }


}

