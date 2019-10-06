//
//  Views.swift
//  CocoapodsDemo
//
//  Created by IFone on 10/6/19.
//  Copyright © 2019 Firas Alkahlout. All rights reserved.
//

import UIKit

struct Views {
    
    let splitViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "splitViewController") as! UISplitViewController
    let navigationViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NavigationViewController") as! UINavigationController
    
    let weatherTableViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
    
    let detailsViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetalsViewController") as! DetalsViewController
    
    let cellIdentifier = "WeatherCell"
    
    let weatherCell = UINib(nibName: "WeatherCell", bundle: nil)
    
}
