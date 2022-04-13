//
//  ViewController.swift
//  Segment
//
//  Created by Abhishek Tiwari on 07/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var seg: UISegmentedControl!
    
    @IBAction func valueChanged(_ sender: UISegmentedControl) {
        if seg.selectedSegmentIndex == 0{
            lbl.text = "First is selected"
        }
        else if seg.selectedSegmentIndex == 1{
            lbl.text = "Second is selected"
        }
        else if seg.selectedSegmentIndex == 2{
            lbl.text = "Third is selected"
        }
        else if seg.selectedSegmentIndex == 3{
            lbl.text = "Fourth is selected"
        }
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

