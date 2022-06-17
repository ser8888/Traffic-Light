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
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lightRed.isHidden = false
        lightRed.alpha = 0.3
        lightRed.layer.cornerRadius = 50
        lightYellow.isHidden = false
        lightYellow.alpha = 0.3
        lightYellow.layer.cornerRadius = 50
        lightGreen.isHidden = false
        lightGreen.alpha = 0.3
        lightGreen.layer.cornerRadius = 50
        
        
    }

    @IBAction func buttonPress() {
        switch index {
        case 0 :
            lightGreen.alpha = 0.3
            lightRed.alpha = 1
            index += 1
        case 1 :
            lightRed.alpha = 0.3
            lightYellow.alpha = 1
            index += 1
        case 2 :
            lightYellow.alpha = 0.3
            lightGreen.alpha = 1
            index = 0
        default :
            index = 0
            
        }
    }
}

