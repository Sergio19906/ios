//
//  ViewController.swift
//  XMLPARSING
//
//  Created by HTSRL on 28/1/15.
//  Copyright (c) 2015 ht. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NSXMLParserDelegate {
    
    var parser = NSXMLParser()
    var posts = NSMutableArray()
    var elements = NSMutableDictionary()
    var element = NSString()
    var title1 = NSMutableString()
    var date = NSMutableString()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func beginParsing()
    {
        posts = []
        parser = NSXMLParser(contentsOfURL: (NSURL(fileURLWithPath: "http://images.apple.com/main/rss/hotnews/hotnews.rss")))!
        parser.delegate = self
        parser.parse()
        tbData!.reloadData()
    }


}

