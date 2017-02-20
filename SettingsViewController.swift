//
//  SettingsViewController.swift
//  EpileppiAberHappy
//
//  Created by Maximilian Karl on 20.02.17.
//  Copyright © 2017 Johannes Velde. All rights reserved.
//

import UIKit
import AVFoundation

var player:AVAudioPlayer = AVAudioPlayer()
var musicOn = false
var musicCode = 0
var audioPath = Bundle.main.path(forResource: "Tetris_Dubstep", ofType: "wav")!

func setAudioPath(songPath: String) {
    do {
        audioPath = Bundle.main.path(forResource: songPath, ofType: "wav")!
        try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath) as URL)
    } catch {
        NSLog("ERROR: Error with Tetris_Dubstep-AudioFILE!")
    }
}

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

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        switchButton.setOn(false, animated:true)
        if (musicOn == false) { setAudioPath(songPath: "Tetris_Dubstep") }
        
        checkForMusic()
        
    }
    
    func checkForMusic() {
        if (musicOn == true) {
            //switchButton.setValue(true, forUndefinedKey: "true")
            switchButton.setOn(true, animated:true)
            setMusic(state: 1)
        } else if ((musicOn == false)) {
            switchButton.setOn(false, animated:true)
            
            
            setMusic(state: 0)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var switchButton: UISwitch!
    

    @IBAction func switchSwitched(_ sender: Any) {
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
    
    //Buttons für Liederwahl:
    @IBOutlet weak var song1: UIButton!
    @IBOutlet weak var song2: UIButton!
    @IBOutlet weak var song3: UIButton!
    @IBOutlet weak var song4: UIButton!
    @IBOutlet weak var song5: UIButton!
    
    //Was bei Button1 Passiert:
    @IBAction func useTetrisNormal(_ sender: Any) {
        setAudioPath(songPath: "Tetris")
    }
    
    @IBAction func useTetrisDubstep(_ sender: Any) {
        setAudioPath(songPath: "Tetris_Dubstep")
    }
    
    @IBAction func useColorTherapy(_ sender: Any) {
        setAudioPath(songPath: "Color_Therapy")
    }
    
    @IBAction func useCantStop(_ sender: Any) {
        setAudioPath(songPath: "I_Cant_Stop")
    }
    
    @IBAction func useEyesOnFire(_ sender: Any) {
        setAudioPath(songPath: "Eyes_On_Fire")
    }
    
    
   

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
