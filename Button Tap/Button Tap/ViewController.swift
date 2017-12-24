//
//  ViewController.swift
//  Button Tap
//
//  Created by 河野遥希 on 2017/12/09.
//  Copyright © 2017年 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //this is linked from "Default text"
    @IBOutlet weak var buckysLabel: UILabel!
    
    //this method is linked from "Bacon" and "Tuna"
    @IBAction func buttonPressed(_ sender: UIButton) {
        //sender is the object that called this method
        let title = sender.title(for: .normal)!
        buckysLabel.text = "You clicked the \(title) button"

    }
    
}

