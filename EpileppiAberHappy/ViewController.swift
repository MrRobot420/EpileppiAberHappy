//
//  ViewController.swift
//  EpileppiAberHappy
//
//  Created by Johannes Velde on 12/02/2017.
//  Copyright © 2017 Johannes Velde. All rights reserved.
//

import UIKit
import AVFoundation

var player:AVAudioPlayer = AVAudioPlayer()
var musicOn = false
var musicCode = 0

func setMusic(state: Int) {
    if (state == 0) {
        player.stop()
        musicOn = false
    } else if (state == 1) {
        player.play()
        musicOn = true
    } else if (state == 2) {
        player.pause()
        musicOn = false
    }
}

class ViewController: UIViewController {
  
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            switchButton.setOn(false, animated:true)
               checkForMusic()
        
    }
    
    func checkForMusic() {
        if (musicOn == true) {
            //switchButton.setValue(true, forUndefinedKey: "true")
            switchButton.setOn(true, animated:true)
            setMusic(state: 1)
        } else if ((musicOn == false)) {
            switchButton.setOn(false, animated:true)
            do {
                let audioPath = Bundle.main.path(forResource: "Tetris_Dubstep", ofType: "wav")
                try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            } catch {
                NSLog("ERROR: Error with Tetris_Dubstep-AudioFILE!")
            }

            setMusic(state: 0)
        }
    }
    
    @IBAction func musicSwitch(_ sender: Any) {
        if (switchButton.isOn == true) {
            musicOn = true
            setMusic(state: 1)
        } else if (switchButton.isOn == false) {
            musicOn = false
            setMusic(state: 0)
        } else {
            setMusic(state: 2)
        }
    }
    
    @IBOutlet weak var switchButton: UISwitch!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handleSwipes(sender: UISwipeGestureRecognizer) {
        if (sender.direction == .right) {
            
        }
    }
    
    
}

