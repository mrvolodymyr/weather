//
//  Wireframe.swift
//  WeatherPlusTwitter
//
//  Created by Volodymyr on 4/20/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

import UIKit

protocol RootWireframeProtocol {
    func presentWeatherViewControllerInWindow()
    func presentDetailViewControllerInWindow()
}

class RootWireframe: NSObject, RootWireframeProtocol {

    var weatherViewControllerInWindow: WeatherViewController!
    var detailViewControllerInWindow: DetailViewController!
    var window = UIWindow(frame: UIScreen.main.bounds)

    func presentWeatherViewControllerInWindow() {
        guard let weatherViewControllerInWindow = UIStoryboard(name: "Main",                                                 bundle: nil).instantiateViewController(withIdentifier: "WeatherViewController")
            as? WeatherViewController else { return }
        self.weatherViewControllerInWindow = weatherViewControllerInWindow
        self.weatherViewControllerInWindow.navigation = self
        self.window.rootViewController = weatherViewControllerInWindow
        self.window.makeKeyAndVisible()
        
    }

    func presentDetailViewControllerInWindow() {
        guard let detailViewControllerInWindow = UIStoryboard(name: "Main",                                                 bundle: nil).instantiateViewController(withIdentifier: "DetailViewController")
            as? DetailViewController else { return }
        self.detailViewControllerInWindow = detailViewControllerInWindow
        self.detailViewControllerInWindow.navigation = self
        self.window.rootViewController = detailViewControllerInWindow
        self.window.makeKeyAndVisible()

    }


}
