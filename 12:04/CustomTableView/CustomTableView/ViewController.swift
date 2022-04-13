//
//  ViewController.swift
//  CustomTableView
//
//  Created by Abhishek Tiwari on 11/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource , PassData {
    
    
    @IBOutlet weak var profileTable: UITableView!
    var Users = [["name":"Abhishek Tiwari",
                  "professionSkill": "Software Developer",
                  "image" : #imageLiteral(resourceName: "linkedin-sales-solutions-pAtA8xe_iVM-unsplash")],
                 
                 ["name":"Rahul Shukla",
                 "professionSkill": "Software Trainee",
                 "image" : #imageLiteral(resourceName: "alexander-hipp-iEEBWgY_6lA-unsplash")]
                 ]
    
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        let dataobj = Users[indexPath.row]
        if let userName = dataobj["name"] as? String{
            cell.lbl1.text = userName
        }
        
        
        cell.img.image = dataobj["image"] as? UIImage
        cell.lbl2.text = dataobj["professionSkill"] as? String
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let details : DetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        details.strimg = Users[indexPath.row]["image"] as? UIImage
         details.strname = Users[indexPath.row]["name"] as? String
        self.navigationController?.pushViewController(details, animated: true)
        
    }
    
    
    @IBAction func newUser(_ sender: UIButton) {
        let addUser = self.storyboard?.instantiateViewController(withIdentifier: "AddViewController") as! AddViewController
        addUser.delegate = self
        self.navigationController?.pushViewController(addUser, animated: true)
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func passingData(name: String, skill: String, image: UIImage) {
        let user = ["name":name , "professionSkill":skill , "image":image] as [String : Any]
        Users.append(user)
        profileTable.reloadData()
        
    }


}

