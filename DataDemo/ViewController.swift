//
//  ViewController.swift
//  DataDemo
//
//  Created by IMCS2 on 2/12/19.
//  Copyright © 2019 IMCS2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var userPhoneNumber: UITextField!
    @IBOutlet weak var userName: UITextField!
    
    //var flag = 0 // flag : to check weather user have store data or not
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //UserDefaults.standard.set("Ashish patel", forKey: "name")
        
//        flag = UserDefaults.standard.value(forKey: "flag") as! Int
//
//        if flag == 1 {
//            saveButton.setTitle("Update", for: UIControl.State.normal)
//        }
        
    
        
        if UserDefaults.standard.value(forKey: "flag") != nil {
            saveButton.setTitle("Update", for: UIControl.State.normal)
            saveButton.addTarget(self, action: #selector(onSaveButtonClicked), for: UIControl.Event.touchUpInside)
        }
    
    }

    @IBAction func onSaveButtonClicked(_ sender: Any) {
        
        //getting user data
        
        UserDefaults.standard.set(userName.text!, forKey: "name")
        UserDefaults.standard.set(userPhoneNumber.text!, forKey: "phone")
        UserDefaults.standard.set(1, forKey: "flag")
        
        print("\(userName.text!) : \(userPhoneNumber.text!)")
    }

}

