//
//  List.swift
//  CocoapodsDemo
//
//  Created by IFone on 10/1/19.
//  Copyright © 2019 Firas Alkahlout. All rights reserved.
//

import Foundation



// MARK: - List
struct List: Codable {
    let coord: Coord
    let sys: Sys
    let weather: [Weather]
    let main: Main
    let visibility: Int
    let wind: Wind
    let clouds: Clouds
    let dt: Int
    let id: Int
    let name: String
}
