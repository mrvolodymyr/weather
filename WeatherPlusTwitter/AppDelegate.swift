//
//  AppDelegate.swift
//  WeatherPlusTwitter
//
//  Created by Volodymyr on 4/18/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

import UIKit
import Firebase
import TwitterKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        FirebaseApp.configure()

        Twitter.sharedInstance().start(withConsumerKey: twitterConsumerKey, consumerSecret: twitterConsumerSecret)

        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {

        let twitterAuthentication = Twitter.sharedInstance().application(app, open: url, options: options)

        return twitterAuthentication
    }


}

