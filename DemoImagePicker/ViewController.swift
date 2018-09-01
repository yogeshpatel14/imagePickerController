//
//  ViewController.swift
//  DemoImagePicker
//
//  Created by Patel Yogesh on 31/08/18.
//  Copyright © 2018 learning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var img_view:UIImageView!
    
    var image_picker:UIImagePickerController! = UIImagePickerController();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func openPhotoGallery() {
        
        self.image_picker.delegate = self as UIImagePickerControllerDelegate & UINavigationControllerDelegate;
        self.image_picker.allowsEditing = false
        self.image_picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        present(self.image_picker, animated: true, completion: nil)
    }
    
    
}

extension ViewController:UIImagePickerControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        self.img_view.image = chosenImage;
        dismiss(animated: true, completion: nil)
    }
}


extension ViewController:UINavigationControllerDelegate {
    
}


