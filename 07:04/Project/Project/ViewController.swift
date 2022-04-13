//
//  ViewController.swift
//  Project
//
//  Created by Abhishek Tiwari on 07/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var textViewField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }


    @IBAction func Tapped(_ sender: Any) {
        textViewField.text = "Username \(userNameField.text!)\n Email \(emailField.text!)"
        
    }
}

