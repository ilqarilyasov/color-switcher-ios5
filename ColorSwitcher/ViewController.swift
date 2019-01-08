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
    
    
    // MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = nil
    }

    @IBAction func changeColor(_ sender: UIStepper) {
        
        // Modulo operator won't let value is goint to higher than colors.count
        
        let currentStepperValue = sender.value.magnitude // Absolute value, all positive value
        colorController.currentColorIndex = Int(currentStepperValue) % colorController.colors.count
        
        if colorController.colorOn {
            view.backgroundColor = colorController.currentColor.color
            label.text = colorController.currentColor.name
        } else {
            view.backgroundColor = .white
            label.text = nil
        }
        
    }
    
    @IBAction func toggleColorOn(_ sender: UISwitch) {
        
    }
    
}

