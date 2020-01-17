//
//  ViewController.swift
//  Click Counter
//
//  Created by Kenneth Chang on 1/16/20.
//  Copyright © 2020 Kenneth P. Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label: UILabel!
    // Label #2: Add an additional label and have it increment with the first
    var label_2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "label"
        view.addSubview(label)
        self.label = label
        
        // Label #2: Add an additional label and have it increment with the first
        let label_2 = UILabel()
        label_2.frame = CGRect(x: 150, y: 200, width: 60, height: 60)
        label_2.text = "label_2"
        view.addSubview(label_2)
        self.label_2 = label_2

        // button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 150, height: 60)
        button.setTitle("Increment Count", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        // Add a decrement button
        let decrement_button = UIButton()
        decrement_button.frame = CGRect(x: 150, y: 350, width: 150, height: 60)
        decrement_button.setTitle("Decrement Count", for: .normal)
        decrement_button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(decrement_button)

        // Callback method for incrementing count
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        // Callback method for decrementing count
        decrement_button.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
    }
    
    // Note: When assigning a button’s action in code, you will need to mark the function with @objc as we did in incrementCount().
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.label_2.text = "\(self.count)"
    }
    
    // Add a decrement button
    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.label_2.text = "\(self.count)"
    }
    
}

