//
//  APIError.swift
//  SwiftCairo-App
//
//  Created by abdelrahman mohamed on 3/28/18.
//  Copyright © 2018 abdelrahman mohamed. All rights reserved.
//

import Foundation


/// Errors enum, to be sent back to network caller, so it would fail gracefully.
public enum APIError: Int, Error {
    case serviceProblem, success
}
