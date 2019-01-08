//
//  ColorController.swift
//  ColorSwitcher
//
//  Created by Ilgar Ilyasov on 1/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class ColorController {
    
    var currentColorIndex: Int = 0
    
    var colors: [Color] = [Color(name: "Red", color: .red),
                           Color(name: "Orange", color: .orange),
                           Color(name: "Yellow", color: .yellow),
                           Color(name: "Green", color: .green),
                           Color(name: "Blue", color: .blue),
                           Color(name: "Purple", color: .purple)]
    
    
    var colorOn: Bool = false
    
    var currentColor: Color {
        return colors[currentColorIndex]
    }
}
