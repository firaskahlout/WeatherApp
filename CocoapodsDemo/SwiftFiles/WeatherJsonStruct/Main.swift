//
//  Main.swift
//  CocoapodsDemo
//
//  Created by IFone on 10/1/19.
//  Copyright © 2019 Firas Alkahlout. All rights reserved.
//

import Foundation


// MARK: - Main
struct Main: Codable {
    let temp: Double
    let pressure: Int
    let humidity: Int
    let tempMin: Int
    let tempMax: Int

    enum CodingKeys: String, CodingKey {
        case temp = "temp"
        case pressure = "pressure"
        case humidity = "humidity"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
    }
}
