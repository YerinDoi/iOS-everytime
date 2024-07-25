//
//  InsetTextField.swift
//  enurytime
//
//  Created by 박예린 on 7/26/24.
//

import UIKit

class InsetTextField: UITextField {
    var insetX: CGFloat = 6 {
        didSet {
            layoutIfNeeded()
        }
    }
    
    var insetY: CGFloat = 6 {
        didSet {
            layoutIfNeeded()
        }
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX , dy: insetY)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX , dy: insetY)
    }
}
