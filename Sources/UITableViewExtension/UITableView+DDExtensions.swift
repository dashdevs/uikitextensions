//
//  UITableView+DDExtensions.swift
//  
//
//  Created by Anatolij Klimenko on 01.12.2021.
//

import UIKit

extension UITableView {
    
    public func selectAllRows(animated: Bool) {
        
        for section in 0..<numberOfSections {
            for row in 0..<numberOfRows(inSection: section) {
                let indexPath = IndexPath(row: row, section: section)
                selectRow(at: indexPath, animated: animated, scrollPosition: .none)
            }
        }
    }
    
    public func selectRows(at indexPaths:[IndexPath], animated: Bool) {
        for indexPath in indexPaths {
            selectRow(at: indexPath, animated: animated, scrollPosition: .none)
        }
    }
    
    public func deselectAllRows(animated: Bool) {
        guard let indexPaths = indexPathsForSelectedRows else { return }
        deselectRows(at: indexPaths, animated: animated)
    }
    
    public func deselectRows(at indexPaths: [IndexPath], animated: Bool) {
        for indexPath in indexPaths {
            deselectRow(at: indexPath, animated: animated)
        }
    }
}
