//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Kenneth Chang on 12/27/19.
//  Copyright © 2019 Kenneth P. Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Recording label changes to start and stop actions.
    @IBOutlet weak var recordingLabel: UILabel!
    
    // IB Action to start recording.
    @IBAction func recordAudio(_ sender: Any) {
        // Caveman debugging
        print("Record button was pressed.")
        recordingLabel.text = "Recording in Progress"
    }
    
    // IB Action to stop recording. Wire this button to be
    // disabled when the recording button is not in use.
    @IBAction func stopRecording(_ sender: Any) {
        // Caveman debugging
        print("Stop Recording Button pressed.")
    }
    
    // Standard template for
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad function loaded.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // super.viewWillAppear(<#T##animated: Bool##Bool#>)
        super.viewWillAppear(animated)
        print("func viewWillAppear called.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
