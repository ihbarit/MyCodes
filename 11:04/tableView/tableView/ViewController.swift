//
//  ViewController.swift
//  tableView
//
//  Created by Abhishek Tiwari on 11/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {
    
    var arr1 = ["AAAA","BBBB","CCCC","DDDD","EEEE","FFFF","GGGG","HHHH"]
    var arr2 = ["aaaa","bbbb","cccc","dddd","eeee","ffff","gggg","hhhh"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr2.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier : "cell")
        cell?.textLabel?.text = arr1[indexPath.row]
        cell?.detailTextLabel?.text = arr2[indexPath.row]
        
        return cell!
    }


}

