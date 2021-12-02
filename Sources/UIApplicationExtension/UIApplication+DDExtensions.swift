//
//  UIApplication+DDExtensions.swift
//  
//
//  Created by Anatolij Klimenko on 02.12.2021.
//

import UIKit

extension UIApplication {
    
    public func openUniversalLink( with url: URL, failure: @escaping (URL) -> Void) {
        open(url, options: [UIApplication.OpenExternalURLOptionsKey.universalLinksOnly : true]) { success in
            guard !success else { return }
            failure(url);
        }
    }
}
