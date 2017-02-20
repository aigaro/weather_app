//
//  ViewController.swift
//  weather_app
//
//  Created by Aigar on 19/02/17.
//  Copyright © 2017 Aigar. All rights reserved.
//https://medium.com/@lucascerro/understanding-nsxmlparser-in-swift-xcode-6-3-1-7c96ff6c65bc#.cp6nw4hf5
import UIKit

var ilm = IlmaAndmed()

class ViewController: UIViewController, XMLParserDelegate {
    
    func beginParse() {

        let urlString = NSURL(string: "https://www.ilmateenistus.ee/ilma_andmed/xml/forecast.php")
        let xmlWeather = XMLParser(contentsOf: urlString as! URL)
        xmlWeather?.delegate = self
        xmlWeather?.parse()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Degrees.text = ilm.weatherDict[0]
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
