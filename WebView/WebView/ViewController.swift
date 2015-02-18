//
//  ViewController.swift
//  WebView
//
//  Created by HTSRL on 28/1/15.
//  Copyright (c) 2015 ht. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    let url = "http://www.gmail.com"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let requestURL = NSURL(string: url)
        
        let request = NSURLRequest(URL: requestURL!)
        
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

