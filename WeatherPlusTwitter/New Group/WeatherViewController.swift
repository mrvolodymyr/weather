//
//  WeatherViewController.swift
//  WeatherPlusTwitter
//
//  Created by Volodymyr on 4/19/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

import UIKit

protocol GetWeatherViewContollerOutput {
    func getWeather(sity: String)
}

class WeatherViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var presenter: GetWeatherViewContollerOutput!
    var navigation: RootWireframe!
    var detailViewController: DetailViewController!
    var sityName = String()

    override func awakeFromNib() {
        super.awakeFromNib()
        GetWeatherConfigurator.sharedInstance.configure(self)

    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func performGetWeather(sityName: String) {
        presenter.getWeather(sity: sityName)

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sityArray.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectSityCell", for: indexPath) as! SelectSityTableViewCell
        cell.sityNameLabel.text = sityArray[indexPath.row]
        return cell

    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigation.presentDetailViewControllerInWindow()
        sityName = sityArray[indexPath.row]
        performGetWeather(sityName: sityName)

    }

}
