//
//  PlaySoundsViewController.swift
//  Pitch-Perfect-App
//
//  Created by Maze Geek on 4/26/18.
//  Copyright © 2018 Amit Biswas. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    //Global Variable
    
    var recordedAudioURL : URL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!

    enum ButtonType: Int {case slow = 0, fast , chipmunk, vader, echo, reverb}
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        print("Play Sound Button Pressed")
    }
    
    @IBAction func stopButtonPressed(_ sender: AnyObject) {
        print("Stop Audio Button Pressed")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         setupAudio()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        configureUI(.notPlaying)
    }

}
