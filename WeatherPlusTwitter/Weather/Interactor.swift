//
//  Interactor.swift
//  WeatherPlusTwitter
//
//  Created by Volodymyr on 4/19/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

import UIKit

protocol GetWeatherInteractorInput: class {
    func getDataFromDataManager(sity: String)
    
}

protocol GetWeatherDetailsOutput: class {
    func weatherDetailsForSity()

}

class GetWeatherInteractor: GetWeatherInteractorInput {

    var weatherDetails: WeatherViewController!
    var dataManager: GetWeatherProtocol!

    func getDataFromDataManager(sity: String) {
        dataManager.getWeatherBySity(sity: sity) { (error, weather) in
            if let error = error {
                print(error)
            } else if let currentWeather = weather {
                print(currentWeather)
            }
        }
    }

}
