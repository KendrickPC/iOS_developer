//
//  ViewController.swift
//  Color Maker With Sliders
//
//  Created by Kenneth Chang on 1/21/20.
//  Copyright © 2020 Kenneth P. Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
//    @IBOutlet weak var colorView: UIView!
//    @IBOutlet weak var redControl: UISwitch!
//    @IBOutlet weak var greenControl: UISwitch!
//    @IBOutlet weak var blueControl: UISwitch!
    
    // Mark: Life Cycle
    
    @IBOutlet weak var RedSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad function loaded.")
    }

    // Mark: Actions
//    @IBAction func changeColorComponent(_ sender: AnyObject) {
//        let r: CGFloat = self.redControl.isOn ? 1 : 0
//        let g: CGFloat = self.greenControl.isOn ? 1 : 0
//        let b: CGFloat = self.blueControl.isOn ? 1 : 0
//
//        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
//    }

}

