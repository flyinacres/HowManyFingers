//
//  InterfaceController.swift
//  HowManyFingers WatchKit Extension
//
//  Created by Ronald Fischer on 10/2/15.
//  Copyright (c) 2015 qpiapps. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var numFingers = 0
    var sliderValue = 0
    
    @IBOutlet weak var userGuess: WKInterfaceSlider!
    
    @IBOutlet weak var winLossLabel: WKInterfaceLabel!
    
    @IBAction func sliderChanged(value: Float) {
        sliderValue = Int(value)
    }
    
    @IBAction func guessMade() {
        numFingers = Int(arc4random_uniform(6))
        println("Slider = \(sliderValue), Fingers = \(numFingers)")
        if sliderValue == numFingers {
            winLossLabel.setText("Yep")
        } else {
            winLossLabel.setText("Nope")
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
