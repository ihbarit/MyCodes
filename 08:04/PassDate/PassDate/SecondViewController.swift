//
//  SecondViewController.swift
//  PassDate
//
//  Created by Abhishek Tiwari on 08/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var lbl2: UILabel!
    
    var strname : String! = nil
    var stremail : String! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl1.text = strname
        lbl2.text = stremail
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
