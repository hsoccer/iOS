//
//  ViewController.swift
//  Dynamic Testing
//
//  Created by 河野遥希 on 2017/12/10.
//  Copyright © 2017年 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Create two shapes
    var greenSquare: UIView?
    var redSquare: UIView?
    var animator: UIDynamicAnimator?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create the shapes
        var dimen = CGRect(x: 25, y: 25, width: 60, height: 60)
        greenSquare = UIView(frame: dimen)
        greenSquare?.backgroundColor = UIColor.green
        
        dimen = CGRect(x: 130, y: 25, width: 90, height: 90)
        redSquare = UIView(frame: dimen)
        redSquare?.backgroundColor = UIColor.red
        
        //Add them to the screen
        self.view.addSubview(greenSquare!)
        self.view.addSubview(redSquare!)
        
        
        //Initializa the animator
        animator = UIDynamicAnimator(referenceView: self.view)
        
        //Add gravity
        let gravity = UIGravityBehavior(items: [greenSquare!, redSquare!])
        let direction = CGVector(dx: 0.0, dy: 1.0)
        gravity.gravityDirection = direction
        
        animator?.addBehavior(gravity)
        
    }



}

