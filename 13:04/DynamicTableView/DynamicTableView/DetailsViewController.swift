//
//  DetailsViewController.swift
//  DynamicTableView
//
//  Created by Abhishek Tiwari on 13/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

protocol DataPass {
    func dataPassing(name:String, skill: String)
}
class DetailsViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var skillText: UITextField!
    var delegate:DataPass!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveDetails(_ sender: UIButton) {
        delegate.dataPassing(name: nameText.text ?? "Invailid name", skill: skillText.text ?? "Invailid Skill")
        self.navigationController?.popViewController(animated: true)
        
    }
}
