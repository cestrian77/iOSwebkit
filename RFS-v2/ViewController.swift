//
//  ViewController.swift
//  RFS-v2
//
//  Created by Matt Cody on 21/08/2020.
//  Copyright © 2020 RFS. All rights reserved.
//

import UIKit
import WebKit



class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.recruitmentfundingsolutions.co.uk/portal/login-page/")!
        webView.load(URLRequest(url: url))
        
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
        // Do any additional setup after loading the view.
    }
    


    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }

}

