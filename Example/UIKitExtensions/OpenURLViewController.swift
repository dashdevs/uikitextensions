//
//  OpenURLViewController.swift
//  UIKitExtensions_Example
//
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import UIKitExtensions
import SafariServices

class OpenURLViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func safariLinkTapped(_ sender: UIButton) {
//        let url = URL(string: "https://google.com")!
//        UIApplication.shared.dd_openUniversalLinkURL(url) { url in
//            let vc = SFSafariViewController(url: url)
//            self.present(vc, animated: true)
//        }
        
        let mailURL = URL(string: "https://slack.com/app_redirect?app=A1BES823B")!
        UIApplication.shared.dd_openUniversalLinkURL(mailURL) { url in
//            let vc = SFSafariViewController(url: url)
//            self.present(vc, animated: true)
        }

    }
}
