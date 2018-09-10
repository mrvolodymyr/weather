//
//  ViewController.swift
//  WeatherPlusTwitter
//
//  Created by Volodymyr on 4/18/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

import UIKit
import TwitterKit
import Firebase

class ViewController: UIViewController {

    var navigation = RootWireframe()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureTwitterSignInButton()

    }

    func configureTwitterSignInButton() {
        let twitterSignInButton = TWTRLogInButton(logInCompletion: { session, error in
            if (error != nil) {
                print("Twitter authentication failed")
            } else {
                guard let token = session?.authToken else {return}
                guard let secret = session?.authTokenSecret else {return}
                let credential = TwitterAuthProvider.credential(withToken: token, secret: secret)
                Auth.auth().signIn(with: credential, completion: { (user, error) in
                    if error == nil {
                        self.navigation.presentWeatherViewControllerInWindow()
                        print("Twitter authentication succeed")
                    } else {
                        print("Twitter authentication failed")
                    }
                })
            }
        })
        twitterSignInButton.center = self.view.center
        self.view.addSubview(twitterSignInButton)
    }

}

