//
//  DoubleViewController.swift
//  EpileppiAberHappy
//
//  Created by Maximilian Karl on 16.02.17.
//  Copyright © 2017 Johannes Velde. All rights reserved.
//

import UIKit

class DoubleViewController: UIViewController {
    
    func getRandomColor() -> UIColor {
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    @IBAction func pressButton(_ sender: Any) {
        topView.backgroundColor = getRandomColor()
        bottomView.backgroundColor = getRandomColor()
    }
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var ChangeColor: UIButton!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var midView: UIView!
  
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
