//
//  ViewController.swift
//  Stepper
//
//  Created by Abhishek Tiwari on 08/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueA: UITextField!
    @IBOutlet weak var valueB: UITextField!
    @IBOutlet weak var lbl: UILabel!
    @IBAction func addValues(_ sender: UIButton) {
        var a = Int(valueA.text!)
        var b = Int(valueB.text!)
        lbl.text = String(a! + b!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

