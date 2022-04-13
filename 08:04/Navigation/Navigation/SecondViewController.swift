//
//  SecondViewController.swift
//  Navigation
//
//  Created by Abhishek Tiwari on 08/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func goFirst(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
