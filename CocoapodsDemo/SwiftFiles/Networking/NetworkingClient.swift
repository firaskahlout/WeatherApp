//
//  NetworkingClient.swift
//  CocoapodsDemo
//
//  Created by IFone on 9/18/19.
//  Copyright © 2019 Firas Alkahlout. All rights reserved.
//

import Foundation
import Alamofire

struct NetworkingClient {
    
    //MARK: - Variables.
    private var urlRequest = URLRequest(url:
        URL(string: "https://samples.openweathermap.org/data/2.5/group?id=524901,703448,2643743&units=metric&appid=b1b15e88fa797225412429c1c50c122a1")!)
    
    func execute( completion : @escaping (Data?, Error?) -> Void){
        
        Alamofire.request(urlRequest).validate().responseJSON { response in
            if let error = response.error {
                completion(nil, error)
            }else if let jsonDict = response.data {
                completion((jsonDict), nil)
            }
        }
    }
}
