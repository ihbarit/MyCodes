//
//  ViewController.swift
//  Hello
//
//  Created by Abhishek Tiwari on 07/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    @IBAction func Press(_ sender: Any) {
        lbl.text = "Hello World"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

