//
//  DataManager.swift
//  WeatherPlusTwitter
//
//  Created by Volodymyr on 4/19/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

import UIKit

var detailViewController: DetailViewController!

protocol GetWeatherProtocol: class {
    func getWeatherBySity(sity: String, closure: (NSError?, [WeatherStructure]?) -> ()) -> ()
}

class WeatherDataManager: GetWeatherProtocol {

    func getWeatherBySity(sity: String, closure: (NSError?, [WeatherStructure]?) -> ()) -> () {
        print("Current weather in " + "\(sity)" + " is:")
        
        let currentURL = weatherURL + sity + ".json"
        guard let url = URL(string: currentURL) else { return }

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                guard let json = try JSONSerialization.jsonObject(with: data) as? [String : Any]
                    else { return }
                for (key, value) in json {
                    if (key == Keys.currentObservation.rawValue) {
                        if let currentWeather: [String : Any] = value as? [String : Any] {
                            for (key, value) in currentWeather {
                                if (key == Keys.currentIcon.rawValue) {
                                    let icon = value as? String
                                    guard let currentIconInSity = icon else { return }
                                    print("Weather image: " + "\(currentIcon)")
                                } else if (key == Keys.currentTemperature.rawValue) {
                                    let temp = value as? Double
                                    guard let currentTempInSity = temp else { return }
                                    print("Temperature: " + "\(currentTemp)" + "\u{00B0}" + "C")
                                } else if (key == Keys.currentWind.rawValue) {
                                    let wind = value as? Double
                                    guard let currentWindInSity = wind else { return }
                                    print("Wind: " + "\(currentWind)" + "kph")
                                }
                            }
                        }
                    }
                }
            } catch let jsonErr {
                print("Error serialization:", jsonErr)
            }
        }.resume()
    }

}
