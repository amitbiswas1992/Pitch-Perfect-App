//
//  ViewController.swift
//  Pitch-Perfect-App
//
//  Created by Maze Geek on 4/24/18.
//  Copyright © 2018 Amit Biswas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: UIButton) {
      stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
        recordingLabel.text = "Recording in Progress"
        
    }
    
    @IBAction func stopRecording(_ sender: UIButton) {
         recordButton.isEnabled = true
         stopRecordingButton.isEnabled = false
        recordingLabel.text = "Tap To Record"
    
  
    }
}

