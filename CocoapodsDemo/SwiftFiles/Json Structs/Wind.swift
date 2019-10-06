//
//  Wind.swift
//  CocoapodsDemo
//
//  Created by IFone on 10/1/19.
//  Copyright © 2019 Firas Alkahlout. All rights reserved.
//

import Foundation



// MARK: - Wind
struct Wind: Codable {
    let speed: Double
    let deg: Int

    enum CodingKeys: String, CodingKey {
        case speed = "speed"
        case deg = "deg"
    }
}
