//
//  ViewController.swift
//  Alert
//
//  Created by Abhishek Tiwari on 08/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func alertAction(_ sender: UIButton) {
        //alert
        let alert = UIAlertController(title: "My title here", message: "My Message here", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
        }
        
        let defaultButton = UIAlertAction(title: "Default", style: .default) { (action) in
            
        }
        
        let destructiveButton = UIAlertAction(title: "Destructive", style: .destructive) { (action) in
            
        }
        
        alert.addAction(destructiveButton)
        alert.addAction(defaultButton)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func actionSheet(_ sender: UIButton) {
        //ActionSheet
        let actionSheet = UIAlertController(title: "My title here", message: "My Message here", preferredStyle: .actionSheet)
        present(actionSheet, animated: true, completion: nil)
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            
        }
        
        let defaultButton = UIAlertAction(title: "Default", style: .default) { (action) in
        
        }
        
        let destructiveButton = UIAlertAction(title: "Destructive", style: .destructive) { (action) in
                 
             }
             
        actionSheet.addAction(destructiveButton)
        actionSheet.addAction(defaultButton)
        actionSheet.addAction(cancel)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

