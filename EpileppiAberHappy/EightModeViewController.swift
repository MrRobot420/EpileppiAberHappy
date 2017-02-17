//
//  EightModeViewController.swift
//  EpileppiAberHappy
//
//  Created by Maximilian Karl on 15.02.17.
//  Copyright © 2017 Johannes Velde. All rights reserved.
//

import UIKit

class EightModeViewController: UIViewController {

    @IBAction func changeColor(_ sender: Any) {
        view.backgroundColor = getRandomColor()
        viewOne.backgroundColor = getRandomColor()
        viewTwo.backgroundColor = getRandomColor()
        viewThree.backgroundColor = getRandomColor()
        viewFour.backgroundColor = getRandomColor()
        viewFive.backgroundColor = getRandomColor()
        viewSix.backgroundColor = getRandomColor()
        viewSeven.backgroundColor = getRandomColor()
        viewEight.backgroundColor = getRandomColor()
    }
    
    func getRandomColor() -> UIColor {
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var viewTwo: UIView!
    @IBOutlet weak var viewThree: UIView!
    @IBOutlet weak var viewFour: UIView!
    @IBOutlet weak var viewFive: UIView!
    @IBOutlet weak var viewSix: UIView!
    @IBOutlet weak var viewSeven: UIView!
    @IBOutlet weak var viewEight: UIView!

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
