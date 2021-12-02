//
//  UIImageExtension.swift
//  
//
//  Created by Anatolij Klimenko on 30.11.2021.
//

import UIKit

extension UIImage {
    
    public func resize(size: CGSize) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        draw(in: CGRect(origin: .zero, size: size))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage
    }
}
