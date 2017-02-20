//
//  IlmaAndmed.swift
//  weather_app
//
//  Created by Aigar on 20/02/17.
//  Copyright © 2017 Aigar. All rights reserved.
//

import UIKit

class IlmaAndmed: NSObject {
    
    var weatherDict: [String] = ["null", "üks", "kaks", "kolm", "neli", "viis", "kuus", "seitse", "kaheksa", "üheksa", "kümme", "üksteist", "kaksteist", "kolmteist", "neliteist", "viisteist", "kuusteist", "seitseteist", "kaheksateist", "üheksateist", "kakskümmend"]
    var tempMin = Int()
    var tempMax = Int()
    var ilmTekst = String()
    var windMin = Int()
    var windMax = Int()
    var ilmKuupaev = Date()  

}
