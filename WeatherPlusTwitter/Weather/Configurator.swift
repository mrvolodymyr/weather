//
//  Configurator.swift
//  WeatherPlusTwitter
//
//  Created by Volodymyr on 4/19/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

import UIKit

class GetWeatherConfigurator {

    static let sharedInstance = GetWeatherConfigurator()

    func configure(_ viewController: WeatherViewController) {

        let dataManager = WeatherDataManager()
        let interactor = GetWeatherInteractor()
        let presenter = GetWeatherPresenter()
        viewController.presenter = presenter
        interactor.dataManager = dataManager
        presenter.interactor = interactor
        
    }

}

