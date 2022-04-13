//
//  ViewController.swift
//  PassDate
//
//  Created by Abhishek Tiwari on 08/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    
    @IBAction func Continue(_ sender: UIButton) {
        
        let second:SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "sec") as! SecondViewController
        self.navigationController?.pushViewController(second, animated: true)
        
        second.strname = nameText.text
        second.stremail = emailText.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

