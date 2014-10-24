//
//  ViewController.swift
//  MobileApp17Oct
//
//  Created by Student on 10/17/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ColorTwoViewControllerDelegate {
    
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func myVCDidFinish(controller: colorTwoController, text: String) {
        colorLabel.text = "Co: " + text
        if text == "green"{
        colorLabel.backgroundColor = UIColor.greenColor()
        }else if text == "red"{
            colorLabel.backgroundColor = UIColor.redColor()
        }else if text == "blue"{
            colorLabel.backgroundColor = UIColor.blueColor()
        }
        controller.navigationController?.popViewControllerAnimated(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "mysegue"{
            let vc = segue.destinationViewController as colorTwoController
            vc.colorString = colorLabel.text!
            vc.delegate = self
        }
        
    }

}

