//
//  ViewController.swift
//  FoodTracker
//
//  Created by Paweł Krzykała on 15/02/2019.
//  Copyright © 2019 Paweł Krzykała. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Handle the text field's user input trought delegate callbacks
        nameTextField.delegate = self
    }

    //MARK: Actions
    @IBAction func setDafaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //this method throws an event to hide keyboard
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
}

