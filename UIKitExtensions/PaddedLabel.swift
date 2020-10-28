//
//  PaddedLabel.swift
//
//  Created by Artur on 19.10.2020.
//

import UIKit

open class PaddedLabel: UILabel {
    
    // MARK: - Properties
    
    public var padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) {
        didSet {
            setNeedsLayout()
        }
    }
    open override var intrinsicContentSize: CGSize {
        var size = super.intrinsicContentSize
        size.width += (padding.left + padding.right)
        size.height += (padding.top + padding.bottom)
        return size
    }
    
    // MARK: - View Lifecycle
    
    open override func drawText(in rect: CGRect) {
        let rect = rect.inset(by: padding)
        super.drawText(in: rect)
    }
}
