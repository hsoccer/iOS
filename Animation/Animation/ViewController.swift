//
//  ViewController.swift
//  Animation
//
//  Created by 河野遥希 on 2017/12/09.
//  Copyright © 2017年 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var buckyButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create animation block to fade out
        UIView.animate(withDuration: 3.0, animations: {
            //self.buckyButton.alpha = 0
            let grow = CGAffineTransform(scaleX:4, y:4)
            let angle = CGFloat(180)
            let rotate = CGAffineTransform(rotationAngle: angle)
            self.buckyButton.transform = grow.concatenating(rotate)
            //self.buckyButton.transform = rotate
            //self.buckyButton.transform = grow
        })
    }


}


