//
//  UITextField+DDExtensions.swift
//  
//
//  Created by Anatolij Klimenko on 02.12.2021.
//

import UIKit

extension UITextField {
    
    public func moveCursorToLocation(location: Int) {
        guard let position = position(from: beginningOfDocument, offset: location) else {
            selectedTextRange = nil
            return
        }
        selectedTextRange = textRange(from: position, to: position)
    }
}
