//
//  OpenURLViewController.swift
//  UIKitExtensions_Example
//
//  Copyright © 2019 dashdevs.com. All rights reserved.
//

import UIKit
import UIKitExtensions
import SafariServices

enum ButtonLink {
    case safari
    case twitter
    case youTube
    
    var url: URL {
        switch self {
        case .safari:
            return URL(string: "https://apple.com")!
        case .twitter:
            return URL(string: "https://twitter.com/apple")!
        case .youTube:
            return URL(string: "https://youtu.be/zHZf9wr2Ak8")!
        }
    }
}

class OpenURLViewController: UIViewController {
    var buttonLink: ButtonLink! = nil {
        didSet {
            UIApplication.shared.dd_openUniversalLinkURL(buttonLink.url) { url in
                let vc = SFSafariViewController(url: url)
                self.present(vc, animated: true)
            }
        }
    }

    @IBAction func safariLinkTapped(_ sender: UIButton) {
        buttonLink = .safari
    }
    
    @IBAction func twitterLinkTapped(_ sender: UIButton) {
        buttonLink = .twitter
    }
    
    @IBAction func youTubeLinkTapped(_ sender: UIButton) {
        buttonLink = .youTube
    }
    
}
