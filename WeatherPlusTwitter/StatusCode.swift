//
//  StatusCode.swift
//  WeatherPlusTwitter
//
//  Created by Volodymyr on 4/19/18.
//  Copyright © 2018 Volodymyr. All rights reserved.
//

import UIKit

enum HTTPStatusCodes: Int {

    case OK = 200
    case BadRequest = 400
    case Unauthorized = 403
    case NotFound = 406
    case InternalServerError = 500

}
