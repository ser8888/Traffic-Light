//
//  ViewController.swift
//  Traffic Light
//
//  Created by John Doe on 16/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lightRed: UIView!
    @IBOutlet var lightYellow: UIView!
    @IBOutlet var lightGreen: UIView!
    @IBOutlet var buttonMain: UIButton!
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightRed.isHidden = false
        lightRed.alpha = 0.3
        lightRed.layer.cornerRadius = 50
        lightYellow.isHidden = false
        lightYellow.alpha = 0.3
        lightYellow.layer.cornerRadius = 50
        lightGreen.isHidden = false
        lightGreen.alpha = 0.3
        lightGreen.layer.cornerRadius = 50
        buttonMain.layer.cornerRadius = 15
        buttonMain.configuration = setupButtonMainPressed(with: "S T A R T")
        
}
    
    @IBAction func buttonMainPressed() {
        switch index {
        case 0 :
            lightRed.alpha = 1
            index += 1
            buttonMain.configuration = setupButtonMainPressed(with: "N E X T")
        case 1 :
            lightRed.alpha = 0.3
            lightYellow.alpha = 1
            index += 1
        case 2 :
            lightYellow.alpha = 0.3
            lightGreen.alpha = 1
            index += 1
        case 3:
            lightGreen.alpha = 0.3
            buttonMain.configuration = setupButtonMainPressed(with: "S T A R T")
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
