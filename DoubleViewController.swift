//
//  DoubleViewController.swift
//  EpileppiAberHappy
//
//  Created by Maximilian Karl on 16.02.17.
//  Copyright © 2017 MrRobot. All rights reserved.
//

import UIKit
import AVFoundation

var help = 0
var clickCount = "Tap 2 C"

class DoubleViewController: UIViewController {
    
    func getRandomColor() -> UIColor {
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    @IBAction func pressButton(_ sender: Any) {
        var randomColor : UIColor
        randomColor = getRandomColor()
        var randomColor2 : UIColor
        randomColor2 = getRandomColor()
        
        countClicks()
        clickCount = "\(help)"
        clicks.text = "\(clickCount)"
        
        //Views ColorChange
        topView.backgroundColor = getRandomColor()
        midView.backgroundColor = getRandomColor()
        bottomView.backgroundColor = getRandomColor()
        
        //Button ColorChange
        ChangeColor.setTitleColor(randomColor, for: .normal)
        
        //Counter ColorChange
        counter.textColor = randomColor2
        
        //Clicks ColorChange
        clicks.textColor = randomColor2
      
        
        
    }
    
    func countClicks() {
        help += 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        clickCount = "Tap 2 C"
        clicks.text = "\(clickCount)"
        //Wenn man neu rein kommt auf Null setzen ??
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Some Variables
    @IBOutlet weak var ChangeColor: UIButton!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var midView: UIView!
    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var clicks: UILabel!
  
    @IBOutlet var swipeReconginzer: UISwipeGestureRecognizer!
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
