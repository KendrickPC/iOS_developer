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
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Note: When assigning a button’s action in code, you will need to mark the function with @objc as we did in incrementCount().
    @IBAction func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
}

