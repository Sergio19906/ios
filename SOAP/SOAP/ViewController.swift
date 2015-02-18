//
//  ViewController.swift
//  SOAP
//
//  Created by HTSRL on 28/1/15.
//  Copyright (c) 2015 ht. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, NSURLConnectionDelegate, NSXMLParserDelegate {

    var mutableData:NSMutableData = NSMutableData.alloc()
    
    var currentElementName:NSString = ""
    
    @IBOutlet weak var txtCelsius: UITextField!
    
    @IBOutlet weak var txtFahrenheit: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnConvertir(sender: UIButton) {
        
        var celsius = txtCelsius.text
        var ahrenheit = txtFahrenheit.text
        
        
        
        var soapMessage = "<?xml version='1.0' encoding='utf-8'?><soap:Envelope xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:xsd='http://www.w3.org/2001/XMLSchema' xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'><soap:Body><CelsiusToFahrenheit xmlns='http://www.w3schools.com/webservices/'><Celsius>\(celsius)</Celsius></CelsiusToFahrenheit></soap:Body></soap:Envelope>"
        
        var urlString = "http://www.w3schools.com/webservices/tempconvert.asmx"
        
        var url = NSURL(string: urlString)
        
        var theRequest = NSMutableURLRequest(URL: url!)
        
        
        var msgLength = String(countElements(soapMessage))
        
        theRequest.addValue("text/xml; charset=utf-8", forHTTPHeaderField: "Content-Type")
        theRequest.addValue(msgLength, forHTTPHeaderField: "Content-Length")
        theRequest.HTTPMethod = "POST"
        theRequest.HTTPBody = soapMessage.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false) // or false
        
        var connection = NSURLConnection(request: theRequest, delegate: self, startImmediately: true)
                connection?.start()
        
        
        
        if (connection == true) {
            var mutableData : Void = NSMutableData.initialize()

            
        }
        
    }
    
    
    @IBAction func convertirFahToCel(sender: AnyObject) {
        
        //var celsius = txtCelsius.text
        var fahrenheit = txtFahrenheit.text
        
        
        
        var soapMessage = "<?xml version='1.0' encoding='utf-8'?><soap:Envelope xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:xsd='http://www.w3.org/2001/XMLSchema' xmlns:soap='http://schemas.xmlsoap.org/soap/envelope/'><soap:Body><FahrenheitToCelsius xmlns='http://www.w3schools.com/webservices/'><Fahrenheit>\(fahrenheit)</Fahrenheit></FahrenheitToCelsius></soap:Body></soap:Envelope>"
        
        var urlString = "http://www.w3schools.com/webservices/tempconvert.asmx"
        
        var url = NSURL(string: urlString)
        
        var theRequest = NSMutableURLRequest(URL: url!)
        
        
        var msgLength = String(countElements(soapMessage))
        
        theRequest.addValue("text/xml; charset=utf-8", forHTTPHeaderField: "Content-Type")
        theRequest.addValue(msgLength, forHTTPHeaderField: "Content-Length")
        theRequest.HTTPMethod = "POST"
        theRequest.HTTPBody = soapMessage.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false) // or false
        
        var connection = NSURLConnection(request: theRequest, delegate: self, startImmediately: true)
        connection?.start()
        
        
        
        if (connection == true) {
            var mutableData : Void = NSMutableData.initialize()
            
            
        }
        
        
        
    }
    
    
    
    
    func connection(connection: NSURLConnection!, didReceiveResponse response: NSURLResponse!) {
        mutableData.length = 0;
        
    }
    
    func connection(connection: NSURLConnection!, didReceiveData data: NSData!) {
        mutableData.appendData(data)

    }
    
    
    func connectionDidFinishLoading(connection: NSURLConnection!) {
        var xmlParser = NSXMLParser(data: mutableData)
        xmlParser.delegate = self
        xmlParser.parse()
        xmlParser.shouldResolveExternalEntities = true

        
    }
    
    func parser(parser: NSXMLParser!, didStartElement elementName: String!, namespaceURI: String!, qualifiedName qName: String!, attributes attributeDict: NSDictionary!) {
        currentElementName = elementName

        
    }
    
    func parser(parser: NSXMLParser!, foundCharacters string: String!){
        if currentElementName == "CelsiusToFahrenheitResult"{
            println(string)
            txtFahrenheit.text = string
        }
        
        if currentElementName == "FahrenheitToCelsiusResult"{
            println(string)
            txtCelsius.text = string
        }
        
        
    }
    
    
    
   
  

}


