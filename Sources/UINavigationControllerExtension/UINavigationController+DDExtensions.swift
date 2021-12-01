//
//  UINavigationController+DDExtensions.swift
//  
//
//  Created by Anatolij Klimenko on 01.12.2021.
//

import UIKit

extension UINavigationController {
 
    public var rootViewController: UIViewController? {
        viewControllers.first
    }

    public func setTopViewController(_ controller: UIViewController, animated: Bool) {
        var viewControllers = self.viewControllers
        viewControllers.removeLast()
        viewControllers.append(controller)
        setViewControllers(viewControllers, animated: animated)
    }
    
    public func pushViewController(_ viewController: UIViewController,
                            fromViewController: UIViewController,
                            animated: Bool) {
        var viewControllers = self.viewControllers
        let numberOfControllers = viewControllers.count
        if let currentIndex = viewControllers.firstIndex(of: fromViewController),
            currentIndex < numberOfControllers {
            let nextIndex = currentIndex + 1
            viewControllers.removeSubrange(nextIndex..<numberOfControllers)
        }
        viewControllers.append(viewController)
        setViewControllers(viewControllers, animated: animated)
    }
}
