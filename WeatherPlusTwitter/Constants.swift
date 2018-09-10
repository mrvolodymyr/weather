//
//  Constants.swift
//  WeatherPlusTwitter
//
//  Created by Volodymyr on 4/18/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

import UIKit

let twitterConsumerKey = "d7l84edEZoKo5EMNLpofucdQU"
let twitterConsumerSecret = "WvTXoD2BdpotKqCBvvw2l0SYMvn8U8DawoCsB5OwK1WLjf1ILz"

let weatherKey = "4d7a5ef0040858ca"
let weatherURL = "http://api.wunderground.com/api/4d7a5ef0040858ca/conditions/q/Ukraine/"

enum Keys: String {
    case currentObservation = "current_observation"
    case currentIcon = "icon_url"
    case currentTemperature = "temp_c"
    case currentWind = "wind_kph"
}

let sityArray = ["L'viv", "Odessa", "Kharkiv", "Kyiv", "Ternopil", "Kherson", "Mykolaiv"]

