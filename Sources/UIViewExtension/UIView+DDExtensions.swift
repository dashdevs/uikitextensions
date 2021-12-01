//
//  UIView+DDExtensions.swift
//  
//
//  Created by Anatolij Klimenko on 01.12.2021.
//

import UIKit

extension UIView {
 
    public static func view(with nibName: String = String(describing: self), bundle: Bundle = Bundle.main) -> UIView? {
        bundle.loadNibNamed(nibName, owner: self)?.first as? UIView
    }
    
    public var hairlineImageView: UIImageView? {
        if self.isKind(of: UIImageView.self) {
            if bounds.size.height <= 1.0 {
                return self as? UIImageView
            }
        }
        for view in subviews {
            if let hairline = view.hairlineImageView {
                return hairline
            }
        }
        return nil
    }
}
