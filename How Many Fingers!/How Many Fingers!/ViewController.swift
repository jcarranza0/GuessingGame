//
//  ViewController.swift
//  How Many Fingers!
//
//  Created by Jesus Carranza on 2/28/17.
//  Copyright © 2017 GreatApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessTextField: UITextField!
    
    @IBOutlet weak var guessFeedback: UILabel!
    
   
    
    @IBAction func guessButton(_ sender: Any) {
        
        let fingers = String(arc4random_uniform(11))
        
        if guessTextField.text == fingers {
            
            guessFeedback.text = "you are correct my good sir, it was " + fingers
            
        }else {
            
            guessFeedback.text = "Wrong, wrong, wrong, it was " + fingers
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

