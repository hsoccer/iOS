//
//  ViewController.swift
//  Slider Sample
//
//  Created by 河野遥希 on 2017/12/09.
//  Copyright © 2017年 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        var sliderValue = lround(Double(sender.value))
        label.text = "\(sliderValue)"
    }
    
    @IBAction func toggle(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            label.text = "Private"
        } else {
            label.text = "Public"
        }
    }
    


}


