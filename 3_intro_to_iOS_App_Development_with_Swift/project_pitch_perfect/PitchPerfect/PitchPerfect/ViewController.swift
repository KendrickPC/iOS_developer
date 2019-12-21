//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Kenneth P. Chang on 12/20/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: NSLayoutConstraint!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear called.")
    }

    @IBAction func recordAudio(_ sender: Any) {
        print("Record button was pressed.")
        recordingLabel.text = "Recording in progress"
    }

    @IBAction func stopRecording(_ sender: Any) {
        print("Stop Recording buttonw as pressed.")
    }
        
}

