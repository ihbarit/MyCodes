//
//  AddViewController.swift
//  CustomTableView
//
//  Created by Abhishek Tiwari on 13/04/22.
//  Copyright © 2022 Abhishek Tiwari. All rights reserved.
//

import UIKit

protocol PassData {
    func passingData(name:String , skill:String, image:UIImage)
}

class AddViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var skillText: UITextField!
    @IBOutlet weak var uploadImage: UIButton!
    var delegate:PassData!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var img:UIImage? = nil
    @IBAction func loadImage(_ sender: Any) {
        let imagecontroller = UIImagePickerController()
        imagecontroller.delegate = self
        imagecontroller.sourceType = UIImagePickerController.SourceType.photoLibrary
        present(imagecontroller, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        img = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveDetails(_ sender: Any) {
        delegate.passingData(name: nameText.text ?? "Invailid name", skill: skillText.text ?? "Invailid skill", image: img!)
        self.navigationController?.popViewController(animated: true)
    }
}
