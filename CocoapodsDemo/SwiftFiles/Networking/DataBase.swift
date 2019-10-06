//
//  DataBase.swift
//  CocoapodsDemo
//
//  Created by IFone on 9/23/19.
//  Copyright © 2019 Firas Alkahlout. All rights reserved.
//

import Foundation

struct DataBase {
    
    func getPlacesName(completion : @escaping (WeatherInforamtions?, Error?)-> Void) {
        var weatherInformation: WeatherInforamtions!
        NetworkingClient().execute(){ json, error in
            if let error = error {
                completion(nil , error)
            }else if let json = json {
                do{
                    weatherInformation = try JSONDecoder().decode(WeatherInforamtions.self, from: json)
                    completion(weatherInformation, nil)
                }catch{ print("there is an error.") }
                
            }
        }
        
    }
    
}
