//
//  SecondViewController.swift
//  ProtocolAndDelegate
//
//  Created by Abhishek Tiwari on 13/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

protocol DataPass {
    func dataPassing(name:String)
}
class SecondViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    var delegate : DataPass!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func Save(_ sender: UIButton) {
        delegate.dataPassing(name: nameText.text!)
        
    }
    
}
