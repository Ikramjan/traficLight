//
//  ViewController.swift
//  traficLight
//
//  Created by Икрамджан Абдукадыров on 9/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var traficLight: UIView!
    @IBOutlet var traficLightTwo: UIView!
    @IBOutlet var traficlightThree: UIView!
    @IBOutlet var nextButtonTrafic: UIButton!
    
    let currentAlpha = 0.3
    override func viewDidLoad() {
        super.viewDidLoad()
        
        traficLight.layer.cornerRadius = 100
        traficLightTwo.layer.cornerRadius = 100
        traficlightThree.layer.cornerRadius = 100
        nextButtonTrafic.layer.cornerRadius = 10
        traficLight.alpha = currentAlpha
        traficLightTwo.alpha = currentAlpha
        traficlightThree.alpha = currentAlpha
    }


    @IBAction func nextButtontChange() {
        nextButtonTrafic.setTitle("NEXT", for: .normal)
        
        if traficLight.alpha == traficLightTwo.alpha {
            traficLight.alpha = 1
            traficlightThree.alpha = currentAlpha
        } else if traficLight.alpha > currentAlpha && traficLightTwo.alpha == traficlightThree.alpha {
            traficLightTwo.alpha = 1
            traficLight.alpha = currentAlpha
        } else if traficLightTwo.alpha > currentAlpha && traficlightThree.alpha == traficLight.alpha {
            traficlightThree.alpha = 1
            traficLightTwo.alpha = currentAlpha
        }
        
    }
}

