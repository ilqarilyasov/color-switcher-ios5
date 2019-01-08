//
//  ViewController.swift
//  ColorSwitcher
//
//  Created by Ilgar Ilyasov on 1/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    
    let colorController = ColorController()

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    
    // MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        stepper.minimumValue = Double.infinity * -1
        stepper.maximumValue = Double.infinity
    }

    func updateViews() {
        if colorController.colorOn {
            view.backgroundColor = colorController.currentColor.color
            label.text = colorController.currentColor.name
        } else {
            view.backgroundColor = .white
            label.text = nil
        }
    }
    
    @IBAction func changeColor(_ sender: UIStepper) {
        
        // Modulo operator won't let value is goint to be higher than colors.count
        // .magnitude return absolute value. Which means all positive value, it won't return any negative value
        
        let currentStepperValue = sender.value.magnitude
        
        colorController.currentColorIndex = Int(currentStepperValue) % colorController.colors.count
        
        updateViews()
    }
    
    @IBAction func toggleColorOn(_ sender: UISwitch) {
        colorController.colorOn = sender.isOn
        updateViews()
    }
    
}

