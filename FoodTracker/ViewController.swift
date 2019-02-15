//
//  ViewController.swift
//  FoodTracker
//
//  Created by Paweł Krzykała on 15/02/2019.
//  Copyright © 2019 Paweł Krzykała. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: Actions
    @IBAction func setDafaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

