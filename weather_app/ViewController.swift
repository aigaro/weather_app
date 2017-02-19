//
//  ViewController.swift
//  weather_app
//
//  Created by Aigar on 19/02/17.
//  Copyright © 2017 Aigar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, XMLParserDelegate {
    
    func beginParse() {

    var ilmastik: String = String()
    let urlString = NSURL(string: "https://www.ilmateenistus.ee/ilma_andmed/xml/forecast.php")
        let xmlWeather = XMLParser(contentsOf: urlString as! URL)
        xmlWeather?.delegate = self
        xmlWeather?.parse()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Degrees.text = temperature
        //Degrees.text = ilmastik
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}

    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        
        if elementName == "phenomenon" {
            
        }
        
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
       
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
       
        
    }
    
    
    
    
    @IBOutlet weak var Degrees: UILabel!
    
    
    
}
