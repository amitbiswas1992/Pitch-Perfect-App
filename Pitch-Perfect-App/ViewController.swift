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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: UIButton) {
        print("record button was pressed")
        recordingLabel.text = "Recording in Progress"
        
    }
    
    @IBAction func stopRecording(_ sender: UIButton) {
   print("Stop recording button was pressed")
    }
}

