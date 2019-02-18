//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Paweł Krzykała on 17/02/2019.
//  Copyright © 2019 Paweł Krzykała. All rights reserved.
//

import UIKit

@IBDesignable
class RatingControl: UIStackView {
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0
    
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setupButtons()
        }
    }
    
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButtons()
        }
    }
    
    //MARK: Initialisation
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Action
    @objc func ratingButtonTapped(button: UIButton) {
        print("Default Text")
    }
    
    //MARK: Private Methods
    private func setupButtons() {
        //cleans old buttons
        for button in ratingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        ratingButtons.removeAll()
        
        //adds new buttons
        for _ in 0..<starCount {
            //create the button
            let button = UIButton()
            button.backgroundColor = UIColor.blue
            // constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            //adds a button to the stack
            addArrangedSubview(button)
            ratingButtons.append(button)
        }
    }
}
