//
//  ViewController.swift
//  Switch
//
//  Created by Abhishek Tiwari on 08/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var switch1: UISwitch!
   
    @IBAction func valueChanged(_ sender: UISwitch) {
       if switch1.isOn {
            lbl.text = "Switch is on"
        }
       else {
        lbl.text = "Switch is off"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

