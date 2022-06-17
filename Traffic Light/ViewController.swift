//
//  ViewController.swift
//  Traffic Light
//
//  Created by John Doe on 16/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lightRedLabel: UIView!
    @IBOutlet var lightYellowLabel: UIView!
    @IBOutlet var lightGreenLabel: UIView!
    @IBOutlet var buttonMain: UIButton!
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightRedLabel.isHidden = false
        lightRedLabel.alpha = 0.3
        lightRedLabel.layer.cornerRadius = 50
        lightYellowLabel.isHidden = false
        lightYellowLabel.alpha = 0.3
        lightYellowLabel.layer.cornerRadius = 50
        lightGreenLabel.isHidden = false
        lightGreenLabel.alpha = 0.3
        lightGreenLabel.layer.cornerRadius = 50
        buttonMain.layer.cornerRadius = 15
        buttonMain.configuration = setupButtonMainPressed(with: "S T A R T")
        
}
    
    @IBAction func buttonMainPressed() {
        buttonMain.configuration = setupButtonMainPressed(with: "N E X T")
        switch index {
        case 0 :
            lightGreenLabel.alpha = 0.3
            lightRedLabel.alpha = 1
            index += 1
        case 1 :
            lightRedLabel.alpha = 0.3
            lightYellowLabel.alpha = 1
            index += 1
        case 2 :
            lightYellowLabel.alpha = 0.3
            lightGreenLabel.alpha = 1
            index = 0
        default :
            return
            
        }
    }
    
    private func setupButtonMainPressed(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = .gray
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 40)
        return buttonConfiguration
    }
}
