//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by Kenneth Chang on 12/27/19.
//  Copyright © 2019 Kenneth P. Chang. All rights reserved.
//

import UIKit

class RecordSoundsViewController: UIViewController {
    
    // Recording label changes to start and stop actions.
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    // IB Action to start recording.
    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text = "Recording in Progress"
        // Recording is in progress so stopRecording should be active.
        stopRecordingButton.isEnabled = true
        // User is already recording at this point.
        recordButton.isEnabled = false
    }
    
    // IB Action to stop recording. Wire this button to be
    // disabled when the recording button is not in use.
    @IBAction func stopRecording(_ sender: Any) {
        recordButton.isEnabled = true
        stopRecordingButton.isEnabled = false
        recordingLabel.text = "Tap to record."
    }

    // Standard template for
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad function loaded.")
        // Disables the Stop stopRecordingButton by default.
        stopRecordingButton.isEnabled = false
    }
    
    // Read documentation for viewWillAppear
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
