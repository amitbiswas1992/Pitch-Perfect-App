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
    
    //Connecting Button with StoryBoard UI
    
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

    
    // Confugured Button Type with tag
    enum ButtonType: Int {case slow = 0, fast , chipmunk, vader, echo, reverb}
    
    // Playing Back Audio by this Function
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        switch(ButtonType(rawValue: sender.tag)!) {
        case .slow:
            playSound(rate: 0.5)
        case .fast:
            playSound(rate: 1.5)
        case .chipmunk:
            playSound(pitch: 1000)
        case .vader:
            playSound(pitch: -1000)
        case .echo:
            playSound(echo: true)
        case .reverb:
            playSound(reverb: true)
        }
        
        configureUI(.playing)
    }
    
   
    @IBAction func stopButtonPressed(_ sender: AnyObject) {
        
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
