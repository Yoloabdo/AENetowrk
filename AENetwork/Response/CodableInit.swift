//
//  CodableInit.swift
//  SwiftCairo-App
//
//  Created by abdelrahman mohamed on 3/28/18.
//  Copyright © 2018 abdelrahman mohamed. All rights reserved.
//

import Foundation

public protocol CodableInit: Codable {
    init(data: Data) throws
    static var decodingStrategy: JSONDecoder.KeyDecodingStrategy { get }
}

extension CodableInit {
    public static var decodingStrategy: JSONDecoder.KeyDecodingStrategy {
        return .convertFromSnakeCase
    }
}

extension CodableInit  {
    public init(data: Data) throws {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = Self.decodingStrategy
        self = try decoder.decode(Self.self, from: data)
        
    }
}
