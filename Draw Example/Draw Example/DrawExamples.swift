//
//  DrawExamples.swift
//  Draw Example
//
//  Created by 河野遥希 on 2017/12/09.
//  Copyright © 2017年 test. All rights reserved.
//

import UIKit

class DrawExamples: UICollectionReusableView {
    
    override func draw(_ rect: CGRect) {
        //context is the object used for drawing
        let context = UIGraphicsGetCurrentContext()
        
        let messi = UIImage(named: "messi.jpg")
        let soccer = UIImage(named: "soccer.png")
        
        // Draw normal
        //let location = CGPoint.init(x:25, y:25)
        //messi?.draw(at: location)
        
        // Fill the screen
        let entireScreen = UIScreen.main.bounds
        messi?.draw(in: entireScreen)
        
        
        /*
        context!.move(to: CGPoint.init(x:50, y:50))
        context!.addLine(to: CGPoint.init(x:90, y:130))
        context!.addLine(to: CGPoint.init(x:180, y:100))
        context!.addLine(to: CGPoint.init(x:90, y:60))
        context!.addLine(to: CGPoint.init(x:50, y:50))
        
        // To fill in a path
        context!.setFillColor(UIColor.red.cgColor)
        context!.fillPath()
         */
        
        /*
        context!.setLineWidth(3.0)
        context!.setStrokeColor(UIColor.purple.cgColor)
         */
        
        /* straight line
        context!.move(to: CGPoint.init(x:50, y:60))
        context!.addLine(to: CGPoint.init(x:250, y:320))
         */
        
        /* ugly shape
        context!.move(to: CGPoint.init(x:50, y:50))
        context!.addLine(to: CGPoint.init(x:90, y:130))
        context!.addLine(to: CGPoint.init(x:180, y:100))
        context!.addLine(to: CGPoint.init(x:90, y:60))
        context!.addLine(to: CGPoint.init(x:50, y:50))
         */
        
        /*
        //Rectangle
        let rectangle = CGRect(x:50, y:50, width:200, height:400)
        context!.addRect(rectangle)
        
        
        //Actually draw the path
        context!.strokePath()
         */
    }
}
