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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
