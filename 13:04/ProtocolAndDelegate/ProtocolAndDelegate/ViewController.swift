//
//  ViewController.swift
//  ProtocolAndDelegate
//
//  Created by Abhishek Tiwari on 13/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController , DataPass{

    @IBOutlet weak var lblName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToForm(_ sender: UIButton) {
        let second = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        second.delegate = self
        self.navigationController?.pushViewController(second, animated: true)
    }
    
    func dataPassing(name: String) {
        lblName.text = name
        self.navigationController?.popViewController(animated: true)
      }
    
}

