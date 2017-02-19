//
//  QuestionViewController.swift
//  EpileppiAberHappy
//
//  Created by Maximilian Karl on 17.02.17.
//  Copyright © 2017 Johannes Velde. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
//        var timer : Timer? = nil
        let random = generateRandomAction()
        var background : UIColor
        background = getRandomColor()

        viewGreat.backgroundColor = background

        if (random == 0) {
            var farbe1: UIColor
            farbe1 = getRandomColor()
            var farbe2: UIColor
            farbe2 = getRandomColor()
            var farbe3: UIColor
            farbe3 = getRandomColor()
            
            A1.backgroundColor = farbe1
            A2.backgroundColor = farbe1
            A3.backgroundColor = farbe1
            A4.backgroundColor = farbe1
            A5.backgroundColor = farbe1

            B1.backgroundColor = farbe2
            B2.backgroundColor = farbe2
            B3.backgroundColor = farbe2
            B4.backgroundColor = farbe2
            B5.backgroundColor = farbe2
            
            C1.backgroundColor = farbe3
            C2.backgroundColor = farbe3
            C3.backgroundColor = farbe3
            C4.backgroundColor = farbe3
            C5.backgroundColor = farbe3
            
            
        } else if (random == 1) {
            var farbe1: UIColor
            farbe1 = getRandomColor()
            var farbe2: UIColor
            farbe2 = getRandomColor()
            var farbe3: UIColor
            farbe3 = getRandomColor()
            var farbe4: UIColor
            farbe4 = getRandomColor()
            var farbe5: UIColor
            farbe5 = getRandomColor()
            
            A1.backgroundColor = farbe1
            B1.backgroundColor = farbe1
            C1.backgroundColor = farbe1
            
            A2.backgroundColor = farbe2
            B2.backgroundColor = farbe2
            C2.backgroundColor = farbe2
            
            A3.backgroundColor = farbe3
            B3.backgroundColor = farbe3
            C3.backgroundColor = farbe3
            
            A4.backgroundColor = farbe4
            B4.backgroundColor = farbe4
            C4.backgroundColor = farbe4
            
            A5.backgroundColor = farbe5
            B5.backgroundColor = farbe5
            C5.backgroundColor = farbe5
            
        } else if (random == 2) {
            var farbe1: UIColor
            farbe1 = getRandomColor()
            var farbe2: UIColor
            farbe2 = getRandomColor()
            
            A1.backgroundColor = farbe1
            C1.backgroundColor = farbe1
            B2.backgroundColor = farbe1
            A3.backgroundColor = farbe1
            C3.backgroundColor = farbe1
            B4.backgroundColor = farbe1
            C5.backgroundColor = farbe1
            A5.backgroundColor = farbe1

            B1.backgroundColor = farbe2
            A2.backgroundColor = farbe2
            C2.backgroundColor = farbe2
            B3.backgroundColor = farbe2
            A4.backgroundColor = farbe2
            C4.backgroundColor = farbe2
            B5.backgroundColor = farbe2
            
            
            
        } else if (random == 3) {
            var farbe1: UIColor
            farbe1 = getRandomColor()
            var farbe2: UIColor
            farbe2 = getRandomColor()
            
            A1.backgroundColor = farbe1
            B1.backgroundColor = farbe1
            C1.backgroundColor = farbe2
            
            A2.backgroundColor = farbe1
            B2.backgroundColor = farbe2
            C2.backgroundColor = farbe2
            
            A3.backgroundColor = farbe1
            B3.backgroundColor = farbe1
            C3.backgroundColor = farbe2
            
            A4.backgroundColor = farbe1
            B4.backgroundColor = farbe2
            C4.backgroundColor = farbe2
            
            A5.backgroundColor = farbe1
            B5.backgroundColor = farbe1
            C5.backgroundColor = farbe2
            
        } else if (random == 4) {
            var farbe1: UIColor
            farbe1 = getRandomColor()
            var farbe2: UIColor
            farbe2 = background
            
            
            let random2 = Int(arc4random_uniform(UInt32(10)))-1
            if (random2 == 0) {
                for i in null {
                    i.backgroundColor = farbe1
                }
                for i in nullInnen {
                    i.backgroundColor = farbe2
                }
            } else if (random2 == 1) {
                for i in eins {
                    i.backgroundColor = farbe1
                }
                for i in einsInnen {
                    i.backgroundColor = farbe2
                }
            } else if (random2 == 2) {
                for i in zwei {
                    i.backgroundColor = farbe1
                }
                for i in zweiInnen {
                    i.backgroundColor = farbe2
                }

            } else if (random2 == 3) {
                for i in drei {
                    i.backgroundColor = farbe1
                }
                for i in dreiInnen {
                    i.backgroundColor = farbe2
                }
                
            } else if (random2 == 4) {
                for i in vier {
                    i.backgroundColor = farbe1
                }
                for i in vierInnen {
                    i.backgroundColor = farbe2
                }
                
            } else if (random2 == 5) {
                for i in fuenf {
                    i.backgroundColor = farbe1
                }
                for i in fuenfInnen {
                    i.backgroundColor = farbe2
                }
                
            } else if (random2 == 6) {
                for i in sechs {
                    i.backgroundColor = farbe1
                }
                for i in sechsInnen {
                    i.backgroundColor = farbe2
                }
                
            } else if (random2 == 7) {
                for i in sieben {
                    i.backgroundColor = farbe1
                }
                for i in siebenInnen {
                    i.backgroundColor = farbe2
                }
                
            } else if (random2 == 8) {
                for i in acht {
                    i.backgroundColor = farbe1
                }
                for i in achtInnen {
                    i.backgroundColor = farbe2
                }
                
            } else if (random2 == 9) {
                for i in neun {
                    i.backgroundColor = farbe1
                }
                for i in neunInnen {
                    i.backgroundColor = farbe2
                }
                
            }
            
            
        } else if (random == 5) {
            button.isHidden = true
//            timer = Timer.scheduledTimer(timeInterval: 0.10, target: self, selector: "", userInfo: nil, repeats: true);

            var farbe1: UIColor
            farbe1 = getRandomColor()
            var farbe2: UIColor
            farbe2 = background
            
            var counter = 9
            for _ in 1...10 {
                if (counter == 0) {
                    for i in null {
                        i.backgroundColor = farbe1
                    }
                    for i in nullInnen {
                        i.backgroundColor = farbe2
                    }
                    counter = counter - 1
                } else if (counter == 1) {
                    for i in eins {
                        i.backgroundColor = farbe1
                    }
                    for i in einsInnen {
                        i.backgroundColor = farbe2
                    }
                    counter = counter - 1
                } else if (counter == 2) {
                    for i in zwei {
                        i.backgroundColor = farbe1
                    }
                    for i in zweiInnen {
                        i.backgroundColor = farbe2
                    }
                    counter = counter - 1
                } else if (counter == 3) {
                    for i in drei {
                        i.backgroundColor = farbe1
                    }
                    for i in dreiInnen {
                        i.backgroundColor = farbe2
                    }
                    counter = counter - 1
                } else if (counter == 4) {
                    for i in vier {
                        i.backgroundColor = farbe1
                    }
                    for i in vierInnen {
                        i.backgroundColor = farbe2
                    }
                    counter = counter - 1
                } else if (counter == 5) {
                    for i in fuenf {
                        i.backgroundColor = farbe1
                    }
                    for i in fuenfInnen {
                        i.backgroundColor = farbe2
                    }
                    counter = counter - 1
                } else if (counter == 6) {
                    for i in sechs {
                        i.backgroundColor = farbe1
                    }
                    for i in sechsInnen {
                        i.backgroundColor = farbe2
                    }
                    counter = counter - 1
                } else if (counter == 7) {
                    for i in sieben {
                        i.backgroundColor = farbe1
                    }
                    for i in siebenInnen {
                        i.backgroundColor = farbe2
                    }
                    counter = counter - 1
                } else if (counter == 8) {
                    for i in acht {
                        i.backgroundColor = farbe1
                    }
                    for i in achtInnen {
                        i.backgroundColor = farbe2
                    }
                    counter = counter - 1
                } else if (counter == 9) {
                    for i in neun {
                        i.backgroundColor = farbe1
                    }
                    for i in neunInnen {
                        i.backgroundColor = farbe2
                    }
                    counter = counter - 1
                }

            }
           

        }
    }
    @IBOutlet var null: [UIView]!
    @IBOutlet var nullInnen: [UIView]!
    
    
    @IBOutlet var eins: [UIView]!
    @IBOutlet var einsInnen: [UIView]!
    
    @IBOutlet var zwei: [UIView]!
    @IBOutlet var zweiInnen: [UIView]!
    
    @IBOutlet var drei: [UIView]!
    @IBOutlet var dreiInnen: [UIView]!
    
    @IBOutlet var vier: [UIView]!
    @IBOutlet var vierInnen: [UIView]!
    
    @IBOutlet var fuenf: [UIView]!
    @IBOutlet var fuenfInnen: [UIView]!
    
    @IBOutlet var sechs: [UIView]!
    @IBOutlet var sechsInnen: [UIView]!
    
    @IBOutlet var sieben: [UIView]!
    @IBOutlet var siebenInnen: [UIView]!
    
    @IBOutlet var acht: [UIView]!
    @IBOutlet var achtInnen: [UIView]!
    
    @IBOutlet var neun: [UIView]!
    @IBOutlet var neunInnen: [UIView]!
    
//    func countDown() {
//        if (++rolls > 10)
//        {
//            timer?.invalidate()
//            timer = nil
//            rolls = 0   // DCB added this presumed missing line
//            btnRoll_x.hidden = false //again, need to do this better
//        }
//    }
    
    func generateRandomAction() -> Int {
        let random = Int(arc4random_uniform(UInt32(10)))
        return random
    }
    
    @IBOutlet weak var button: UIButton!
    
    func getRandomColor() -> UIColor {
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var A1: UIView!
    @IBOutlet weak var A2: UIView!
    @IBOutlet weak var A3: UIView!
    @IBOutlet weak var A4: UIView!
    @IBOutlet weak var A5: UIView!
    
    @IBOutlet weak var B1: UIView!
    @IBOutlet weak var B2: UIView!
    @IBOutlet weak var B3: UIView!
    @IBOutlet weak var B4: UIView!
    @IBOutlet weak var B5: UIView!

    @IBOutlet weak var C1: UIView!
    @IBOutlet weak var C2: UIView!
    @IBOutlet weak var C3: UIView!
    @IBOutlet weak var C4: UIView!
    @IBOutlet weak var C5: UIView!
    
    @IBOutlet var viewGreat: UIView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
