//
//  ViewController.swift
//  Bus to the people
//
//  Created by Alexa Roman on 4/21/16.
//  Copyright © 2016 Alexa Roman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        performSegueWithIdentifier("showDude", sender: self)
        return true
    }

}

