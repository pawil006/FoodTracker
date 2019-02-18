//
//  ViewController.swift
//  FoodTracker
//
//  Created by Paweł Krzykała on 15/02/2019.
//  Copyright © 2019 Paweł Krzykała. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Handle the text field's user input trought delegate callbacks
        nameTextField.delegate = self
    }

    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //this method throws an event to hide keyboard
        textField.resignFirstResponder()
        return true
    }
    //MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //dismiss the picker
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //check if info contain original image, if not creates an error
        guard let selectedImage = info[.originalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image but was provided the following \(info)")
        }
        photoImageView.image = selectedImage
        // dismiss a picker
        dismiss(animated: true, completion: nil)
    }
    //MARK: Actions
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        nameTextField.resignFirstResponder()
        //image picker controller is stuff to select photo from gallery
        let imagePickerController = UIImagePickerController()
        // and set source type only to gallery
        imagePickerController.sourceType = .photoLibrary
        // set IPC to delegate to VC
        imagePickerController.delegate = self
        // opens library selector
        present(imagePickerController, animated: true, completion: nil)
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
}

