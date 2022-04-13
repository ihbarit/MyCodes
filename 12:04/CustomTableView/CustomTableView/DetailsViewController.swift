//
//  DetailsViewController.swift
//  CustomTableView
//
//  Created by Abhishek Tiwari on 12/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    
    
    @IBOutlet weak var detailsImg: UIImageView!
    @IBOutlet weak var dname: UILabel!
    var strimg:UIImage!
    var strname:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsImg.image = strimg
        dname.text = strname
        detailsImg.layer.cornerRadius = detailsImg.frame.width/2
        detailsImg.clipsToBounds = true
        
    }
    @IBOutlet weak var textView: UITextView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
