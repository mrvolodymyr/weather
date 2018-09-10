//
//  DetailViewController.swift
//  WeatherPlusTwitter
//
//  Created by Volodymyr on 4/22/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var navigation: RootWireframe!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var currentWeatherImg: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
  

//        temperatureLabel.text = temp
//        windLabel.text = wind
//        let gifUrl: String = dataManager.icon
//        currentWeatherImg.image = UIImage.gifImageWithURL(gifUrl)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
}
