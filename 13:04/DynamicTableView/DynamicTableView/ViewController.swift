//
//  ViewController.swift
//  DynamicTableView
//
//  Created by Abhishek Tiwari on 13/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource , UITableViewDelegate, DataPass{
 
    @IBOutlet weak var listTable: UITableView!
    var Users = [[
        "name":"Abhishek",
        "professionalSkill":"Software Developer"],
         [
        "name":"Amit",
        "professionalSkill":"React Developer"]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addNewUser(_ sender: UIButton) {
        let details = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        details.delegate = self
        self.navigationController?.pushViewController(details, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.nameLabel.text = Users[indexPath.row]["name"]
        cell.skillLabel.text = Users[indexPath.row]["professionalSkill"]
        
        return cell
        
    }
    func dataPassing(name: String, skill: String) {
        let user = ["name":name,"professionalSkill":skill]
        Users.append(user)
        listTable.reloadData()
        
       }
    
}

