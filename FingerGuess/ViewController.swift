//
//  ViewController.swift
//  FingerGuess
//
//  Created by star on 2/27/19.
//  Copyright © 2019 reyzeny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var display_text: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func makeGuess(_ sender: Any) {
        let randomInt = Int.random(in: 0..<6)
        //let cc = arc4random_uniform(9)
        let numberGuess = txtNumber.text
        
        if Int(numberGuess!)==randomInt {
            display_text.text = "You're right!"
        }else{
            display_text.text = "Wrong! It was a \(randomInt)"
        }
    }
    
}

