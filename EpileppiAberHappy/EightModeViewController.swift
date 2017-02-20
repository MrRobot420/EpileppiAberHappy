//
//  EightModeViewController.swift
//  EpileppiAberHappy
//
//  Created by Maximilian Karl on 15.02.17.
//  Copyright © 2017 Johannes Velde. All rights reserved.
//

import UIKit

class EightModeViewController: UIViewController {

    //   @IBAction func changeColor(_ sender: Any) {
    //   view.backgroundColor = getRandomColor()
    //    viewOne.backgroundColor = getRandomColor()
    //    viewTwo.backgroundColor = getRandomColor()
    //    viewThree.backgroundColor = getRandomColor()
    //    viewFour.backgroundColor = getRandomColor()
    //    viewFive.backgroundColor = getRandomColor()
    //    viewSix.backgroundColor = getRandomColor()
    //    viewSeven.backgroundColor = getRandomColor()
    //    viewEight.backgroundColor = getRandomColor()
    //}
    
    func getRandomColor() -> UIColor {
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    @IBAction func bottonPressed(_ sender: Any) {
        let random = generateRandomAction()
        if (random == 0) {
            var farbe1: UIColor
            farbe1 = getRandomColor()
            var farbe2: UIColor
            farbe2 = getRandomColor()
            
            view.backgroundColor = getRandomColor()
            A1.backgroundColor = farbe1
            A3.backgroundColor = farbe1
            A5.backgroundColor = farbe1
            A7.backgroundColor = farbe1
            A9.backgroundColor = farbe1
            
            A2.backgroundColor = farbe2
            A4.backgroundColor = farbe2
            A6.backgroundColor = farbe2
            A8.backgroundColor = farbe2
            A10.backgroundColor = farbe2
            
            B1.backgroundColor = farbe2
            B3.backgroundColor = farbe2
            B5.backgroundColor = farbe2
            B7.backgroundColor = farbe2
            B9.backgroundColor = farbe2
            
            B2.backgroundColor = farbe1
            B4.backgroundColor = farbe1
            B6.backgroundColor = farbe1
            B8.backgroundColor = farbe1
            B10.backgroundColor = farbe1
            
        } else if (random == 1){
            var farbe1: UIColor
            farbe1 = getRandomColor()
            var farbe2: UIColor
            farbe2 = getRandomColor()
            
            view.backgroundColor = getRandomColor()
            A1.backgroundColor = farbe1
            A3.backgroundColor = farbe1
            A5.backgroundColor = farbe1
            A7.backgroundColor = farbe1
            A9.backgroundColor = farbe1
            
            A2.backgroundColor = farbe1
            A4.backgroundColor = farbe1
            A6.backgroundColor = farbe1
            A8.backgroundColor = farbe1
            A10.backgroundColor = farbe1
            
            B1.backgroundColor = farbe2
            B3.backgroundColor = farbe2
            B5.backgroundColor = farbe2
            B7.backgroundColor = farbe2
            B9.backgroundColor = farbe2
            
            B2.backgroundColor = farbe2
            B4.backgroundColor = farbe2
            B6.backgroundColor = farbe2
            B8.backgroundColor = farbe2
            B10.backgroundColor = farbe2
            
        } else if (random == 2) {
            var farbe1: UIColor
            farbe1 = getRandomColor()
            var farbe2: UIColor
            farbe2 = getRandomColor()
            
            view.backgroundColor = getRandomColor()
            A1.backgroundColor = farbe1
            A3.backgroundColor = farbe1
            A5.backgroundColor = farbe1
            A7.backgroundColor = farbe1
            A9.backgroundColor = farbe1
            
            A2.backgroundColor = farbe2
            A4.backgroundColor = farbe2
            A6.backgroundColor = farbe2
            A8.backgroundColor = farbe2
            A10.backgroundColor = farbe2
            
            B1.backgroundColor = farbe1
            B3.backgroundColor = farbe1
            B5.backgroundColor = farbe1
            B7.backgroundColor = farbe1
            B9.backgroundColor = farbe1
            
            B2.backgroundColor = farbe2
            B4.backgroundColor = farbe2
            B6.backgroundColor = farbe2
            B8.backgroundColor = farbe2
            B10.backgroundColor = farbe2
        
        } else if (random == 3) {
            var farbe1: UIColor
            farbe1 = getRandomColor()
            var farbe2: UIColor
            farbe2 = getRandomColor()
            
            view.backgroundColor = getRandomColor()
            A1.backgroundColor = farbe1
            A2.backgroundColor = farbe1
            B1.backgroundColor = farbe1
            B2.backgroundColor = farbe1
            
            A3.backgroundColor = farbe2
            A4.backgroundColor = farbe2
            B3.backgroundColor = farbe2
            B4.backgroundColor = farbe2
            
            A5.backgroundColor = farbe1
            A6.backgroundColor = farbe1
            B5.backgroundColor = farbe1
            B6.backgroundColor = farbe1
            
            A7.backgroundColor = farbe2
            A8.backgroundColor = farbe2
            B7.backgroundColor = farbe2
            B8.backgroundColor = farbe2
            
            A9.backgroundColor = farbe1
            A10.backgroundColor = farbe1
            B9.backgroundColor = farbe1
            B10.backgroundColor = farbe1
        
        } else if (random == 4) {
            var farbe1: UIColor
            farbe1 = getRandomColor()
            var farbe2: UIColor
            farbe2 = getRandomColor()
            
            view.backgroundColor = getRandomColor()
            A1.backgroundColor = farbe1
            A2.backgroundColor = farbe1
            A3.backgroundColor = farbe1
            A4.backgroundColor = farbe1
            A5.backgroundColor = farbe1
            B6.backgroundColor = farbe1
            B7.backgroundColor = farbe1
            B8.backgroundColor = farbe1
            B9.backgroundColor = farbe1
            B10.backgroundColor = farbe1
            
            B1.backgroundColor = farbe2
            B2.backgroundColor = farbe2
            B3.backgroundColor = farbe2
            B4.backgroundColor = farbe2
            B5.backgroundColor = farbe2
            A6.backgroundColor = farbe2
            A7.backgroundColor = farbe2
            A8.backgroundColor = farbe2
            A9.backgroundColor = farbe2
            A10.backgroundColor = farbe2
            
        } else if (random == 5) {
            var farbe1: UIColor
            farbe1 = getRandomColor()
            var farbe2: UIColor
            farbe2 = getRandomColor()
            var farbe3: UIColor
            farbe3 = getRandomColor()
            var farbe4: UIColor
            farbe4 = getRandomColor()
            
            view.backgroundColor = getRandomColor()
            A1.backgroundColor = farbe1
            A2.backgroundColor = farbe1
            A3.backgroundColor = farbe1
            A4.backgroundColor = farbe1
            A5.backgroundColor = farbe1
            B6.backgroundColor = farbe3
            B7.backgroundColor = farbe3
            B8.backgroundColor = farbe3
            B9.backgroundColor = farbe3
            B10.backgroundColor = farbe3
            
            B1.backgroundColor = farbe2
            B2.backgroundColor = farbe2
            B3.backgroundColor = farbe2
            B4.backgroundColor = farbe2
            B5.backgroundColor = farbe2
            A6.backgroundColor = farbe4
            A7.backgroundColor = farbe4
            A8.backgroundColor = farbe4
            A9.backgroundColor = farbe4
            A10.backgroundColor = farbe4
        }

    }
   
    
    func generateRandomAction() -> Int {
        let random = Int(arc4random_uniform(UInt32(6)))
        return random
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var A1: UIView!
    @IBOutlet weak var A2: UIView!
    @IBOutlet weak var A3: UIView!
    @IBOutlet weak var A4: UIView!
    @IBOutlet weak var A5: UIView!
    @IBOutlet weak var A6: UIView!
    @IBOutlet weak var A7: UIView!
    @IBOutlet weak var A8: UIView!
    @IBOutlet weak var A9: UIView!
    @IBOutlet weak var A10: UIView!
    
    @IBOutlet weak var B1: UIView!
    @IBOutlet weak var B2: UIView!
    @IBOutlet weak var B3: UIView!
    @IBOutlet weak var B4: UIView!
    @IBOutlet weak var B5: UIView!
    @IBOutlet weak var B6: UIView!
    @IBOutlet weak var B7: UIView!
    @IBOutlet weak var B8: UIView!
    @IBOutlet weak var B9: UIView!
    @IBOutlet weak var B10: UIView!
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var swipeMenue: UISwipeGestureRecognizer!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
