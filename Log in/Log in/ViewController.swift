//
//  ViewController.swift
//  Log in
//
//  Created by 河野遥希 on 2017/12/09.
//  Copyright © 2017年 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.email.resignFirstResponder()
        self.password.resignFirstResponder()
    }
    
    //built in method
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

