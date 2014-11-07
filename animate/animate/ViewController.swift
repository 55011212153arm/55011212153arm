//
//  ViewController.swift
//  animate
//
//  Created by Student on 11/7/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit
var square: UIView!
var animator: UIDynamicAnimator!
var gravity: UIGravityBehavior!
var collision: UICollisionBehavior!
var snap: UISnapBehavior!
var panGesture:UIPanGestureRecognizer!



var firstContact = false

let barrier = UIView(frame: CGRect(x: 0, y:300, width:130, height:20))

class ViewController: UIViewController,UICollisionBehaviorDelegate {
    
    func collisionBehavior(behavior: UICollisionBehavior!, beganContactForItem item: UIDynamicItem!, withBoundaryIdentifier identifier: NSCopying!, atPoint p: CGPoint) {
        
        println("Boundary contact occurred - \(identifier)")
        
        let collidingView = item as UIView
        collidingView.backgroundColor = UIColor.yellowColor()
        UIView.animateWithDuration(0.3){
            collidingView.backgroundColor = UIColor.grayColor()
        }
        
        if (!firstContact){
            firstContact = true
            
            let square = UIView(frame: CGRect(x:30, y:0, width:100, height:100))
            square.backgroundColor = UIColor.grayColor()
            view.addSubview(square)
            
            collision.addItem(square)
            gravity.addItem(square)
            
            let attach = UIAttachmentBehavior(item: collidingView, attachedToItem: square)
            animator.addBehavior(attach)
        }
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        square = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        square.backgroundColor = UIColor.grayColor()
        view.addSubview(square)
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square])
        animator.addBehavior(gravity)
        
        collision = UICollisionBehavior(items: [square])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
        barrier.backgroundColor = UIColor.redColor()
        view.addSubview(barrier)
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier.frame))
        
        println("\(NSStringFromCGAffineTransform(square.transform))\(NSStringFromCGPoint(square.center))")
        
        collision.collisionDelegate = self
        
        let itemBehaviour = UIDynamicItemBehavior(items: [square])
        itemBehaviour.elasticity = 0.8
        animator.addBehavior(itemBehaviour)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        if(snap != nil){
            animator.removeBehavior(snap)
        }
        
        let touch = touches.anyObject() as UITouch
        snap = UISnapBehavior(item: square, snapToPoint: touch.locationInView(view))
        animator.addBehavior(snap)
    }
    func panning(pan:UIPanGestureRecognizer){
        println("Our of Box is panning...")
        
        
        if pan.state == UIGestureRecognizerState.Began{
            
        }
    }


}

