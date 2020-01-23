//
//  ViewController.swift
//  ColorPickerWithSliders
//
//  Created by Kenneth Chang on 1/23/20.
//  Copyright © 2020 Kenneth P. Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLabelOutlet: UILabel!
    @IBOutlet weak var greenLabelOutlet: UILabel!
    @IBOutlet weak var blueLabelOutlet: UILabel!

    @IBOutlet weak var redSliderOutlet: UISlider!
    @IBOutlet weak var greenSliderOutlet: UISlider!
    @IBOutlet weak var blueSliderOutlet: UISlider!

    @IBOutlet weak var displayingLabel: UILabel!
    
    var redColor : Float = 0
    var greenColor : Float = 0
    var blueColor : Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad function loaded.")
    }

    @IBAction func redSliderAction(_ sender: UISlider) {
        changeColors()
    }
    @IBAction func greenSliderAction(_ sender: UISlider) {
        changeColors()
    }
    @IBAction func blueSliderAction(_ sender: UISlider) {
        changeColors()
    }
    
    func changeDisplayLabelColor() {
        displayingLabel.backgroundColor = UIColor(red: CGFloat(redColor), green: CGFloat(greenColor), blue: CGFloat(blueColor), alpha: 1.0)
        changeLabelNumber()
    }
    
    func changeColors() {
        redColor = redSliderOutlet.value
        greenColor = greenSliderOutlet.value
        blueColor = blueSliderOutlet.value
        changeDisplayLabelColor()
    }
 
    func changeLabelNumber() {
        let roundedRed = String(format: "%0.0f", (redColor * 255))
        let roundedGreen = String(format: "%0.0f", (greenColor * 255))
        let roundedBlue = String(format: "%0.0f", (blueColor * 255))
        
        redLabelOutlet.text = "Red: \(roundedRed)"
        greenLabelOutlet.text = "Green: \(roundedGreen)"
        blueLabelOutlet.text = "Blue: \(roundedBlue)"
    }
    
}

