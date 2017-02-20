//
//  playground.swift
//  weather_app
//
//  Created by Aigar on 19/02/17.
//  Copyright © 2017 Aigar. All rights reserved.
//

//: Playground - noun: a place where people can play

//https://www.ioscreator.com/tutorials/parsing-xml-tutorial
//https://www.reddit.com/r/swift/comments/36s26u/accessing_xml_elementes_with_nsxmlparser/
//https://medium.com/@lucascerro/understanding-nsxmlparser-in-swift-xcode-6-3-1-7c96ff6c65bc#.xkprniihi

import UIKit

struct Building {
    var name: String?
}

class ViewController: NSObject, XMLParserDelegate {
    
    var building: Building?
    var elementValue: String?
    //var ilmastik = [ViewController]()
    var temperatuur = Int()
    
    func beginParse() {
        
        
        let urlString = NSURL(string: "https://www.ilmateenistus.ee/ilma_andmed/xml/forecast.php")
        var xmlWeather = XMLParser(contentsOf: urlString as! URL)
        xmlWeather?.delegate = self
        xmlWeather?.parse()
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        self.elementValue = "";
        
        if elementName == "phenomenon" {
            self.building = Building()
        }
        //print(elementName)
        
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        self.elementValue? += string
        print(elementValue!)
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        if elementName == "name" {
            self.building?.name = self.elementValue
        }
        else if elementName == "phenomenon" {
            
        }
        
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        
}
