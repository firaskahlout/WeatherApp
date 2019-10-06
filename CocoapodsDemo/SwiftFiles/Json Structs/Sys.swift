//
//  Sys.swift
//  CocoapodsDemo
//
//  Created by IFone on 10/1/19.
//  Copyright © 2019 Firas Alkahlout. All rights reserved.
//

import Foundation

// MARK: - Sys
struct Sys: Codable {
    let type: Int
    let id: Int
    let message: Double
    let country: String
    let sunrise: Int
    let sunset: Int

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case id = "id"
        case message = "message"
        case country = "country"
        case sunrise = "sunrise"
        case sunset = "sunset"
    }
}
