//
//  ViewController.swift
//  CollectionView
//
//  Created by Abhishek Tiwari on 13/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate{
    
    var watches = [[
        "label":"Watch1",
        "image":#imageLiteral(resourceName: "klickors-moe-1CjiCJgHOOY-unsplash")],
        [
        "label":"Watch2",
        "image":#imageLiteral(resourceName: "vvs--KRN2kU9e1s-unsplash")],
        [
        "label":"Watch3",
        "image":#imageLiteral(resourceName: "tadeusz-lakota-Tb38UzCvKCY-unsplash")],
       [
        "label":"Watch4",
        "image":#imageLiteral(resourceName: "paul-cuoco-CO2vOhPqlrM-unsplash")],
       [
        "label":"Watch5",
        "image":#imageLiteral(resourceName: "klickors-moe-1CjiCJgHOOY-unsplash")],
       [
        "label":"Watch6",
        "image":#imageLiteral(resourceName: "paul-cuoco-CO2vOhPqlrM-unsplash")],
       [
        "label":"Watch7",
        "image":#imageLiteral(resourceName: "jess-bailey-_969XXSgWc0-unsplash")],
       [
        "label":"Watch8",
        "image":#imageLiteral(resourceName: "paul-cuoco-5_kn5-AC9SQ-unsplash")],
       [
        "label":"Watch9",
        "image":#imageLiteral(resourceName: "paul-cuoco-CO2vOhPqlrM-unsplash")],
       [
        "label":"Watch10",
        "image":#imageLiteral(resourceName: "jess-bailey-_969XXSgWc0-unsplash")],
       [
        "label":"Watch11",
        "image":#imageLiteral(resourceName: "klickors-moe-1CjiCJgHOOY-unsplash")],
       
       [
        "label":"Watch12",
          "image":#imageLiteral(resourceName: "vvs--KRN2kU9e1s-unsplash")],
         [
          "label":"Watch13",
          "image":#imageLiteral(resourceName: "vvs--KRN2kU9e1s-unsplash")],
         [
          "label":"Watch14",
          "image":#imageLiteral(resourceName: "paul-cuoco-5_kn5-AC9SQ-unsplash")],
         [
          "label":"Watch15",
          "image":#imageLiteral(resourceName: "paul-cuoco-CO2vOhPqlrM-unsplash")],
         [
          "label":"Watch16",
          "image":#imageLiteral(resourceName: "jess-bailey-_969XXSgWc0-unsplash")],
         [
          "label":"Watch17",
          "image":#imageLiteral(resourceName: "jess-bailey-_969XXSgWc0-unsplash")],
         [
          "label":"Watch18",
          "image":#imageLiteral(resourceName: "vvs--KRN2kU9e1s-unsplash")],
         [
          "label":"Watch19",
          "image":#imageLiteral(resourceName: "louis-mornaud-ADvixEYm5qE-unsplash")],
         [
          "label":"Watch20",
          "image":#imageLiteral(resourceName: "vvs--KRN2kU9e1s-unsplash")],
        
         ]
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return watches.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.labelName.text = watches[indexPath.row]["label"] as? String
        cell.img.image = watches[indexPath.row]["image"] as? UIImage
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


