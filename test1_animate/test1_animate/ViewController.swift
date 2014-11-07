//
//  ViewController.swift
//  test1_animate
//
//  Created by Student on 11/7/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numFish: UISlider!
    
    @IBAction func animateButton(sender: AnyObject) {
        
        let numberOfFish = Int(self.numFish.value)
        
        for loopNumber in 0...numberOfFish {

        let size : CGFloat = CGFloat( Int(rand()) %  40 + 20.0)
        let yPosition : CGFloat = CGFloat( Int(rand()) %  200 + 20.0)
        
        let duration : NSTimeInterval = 2.5
        let delay =  NSTimeInterval( ((Int(rand()) %  900)+100.0) / 1000.0)
        
            let fish = UIImageView()
            fish.image = UIImage(named: "bigeyefish.jpg")
            fish.frame = CGRectMake(0, yPosition, size, size)
            self.view.addSubview(fish)
        
        let options = UIViewAnimationOptions.CurveLinear
        
        UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
            
            fish.backgroundColor = UIColor.redColor()
            
            fish.frame = CGRectMake(320-size, yPosition, size, size)
            
            }, completion: { animationFinished in fish.removeFromSuperview()})
            
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

