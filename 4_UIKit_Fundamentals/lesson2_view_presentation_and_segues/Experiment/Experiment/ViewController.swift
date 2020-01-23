//
//  ViewController.swift
//  Experiment
//
//  Created by Kenneth Chang on 1/23/20.
//  Copyright © 2020 Kenneth P. Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad function loaded.")
    }
 
    @IBAction func experiment() {
        let nextController = UIImagePickerController()
        self.present(nextController, animated: true, completion: nil)
    }
}

