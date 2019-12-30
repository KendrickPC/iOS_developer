//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Kenneth Chang on 12/27/19.
//  Copyright © 2019 Kenneth P. Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        print("Record button was pressed")
        recordingLabel.text = "Recording in Progress"
    }

    @IBAction func stopRecording(_ sender: Any) {
        print("Stop Recording button was pressed.")
    }

}

