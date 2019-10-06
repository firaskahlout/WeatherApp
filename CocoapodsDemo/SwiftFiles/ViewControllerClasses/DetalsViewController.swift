//
//  DetalsViewController.swift
//  CocoapodsDemo
//
//  Created by IFone on 9/25/19.
//  Copyright © 2019 Firas Alkahlout. All rights reserved.
//

import UIKit

final class DetalsViewController: UIViewController {
    
    //MARK: - Outlets.
    @IBOutlet private weak var dataView: UIView!
    @IBOutlet private weak var labelView: UIView!
    @IBOutlet private weak var descriptionLbl: UILabel!
    @IBOutlet private weak var tempLbl: UILabel!
    @IBOutlet private weak var maxTempLbl: UILabel!
    @IBOutlet private weak var minTempLbl: UILabel!
    @IBOutlet private weak var weatherIcon: UIImageView!
    @IBOutlet private weak var backImg: UIImageView!
    @IBOutlet private weak var humidityLbl: UILabel!
    
    //MARK: - Variables.
    var weather: List!
    var countryImage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configViews()
        if let _ = weather, let _ = countryImage {
            setData()
        }else {
            splitViewController?.showDetailViewController(UIViewController(), sender: nil)
        }
    }
    
    private func setData() {
        tempLbl.text = "\(weather.main.temp)ºC"
        maxTempLbl.text = "\(weather.main.tempMax)ºC"
        minTempLbl.text = "\(weather.main.tempMin)ºC"
        descriptionLbl.text = "\(weather.weather[0].weatherDescription)"
        weatherIcon.image = UIImage(named: weather.weather[0].icon)
        backImg.image = UIImage(named: countryImage)
        humidityLbl.text = "Humidity: \(weather.main.humidity)%"
    }
    
    private func configViews() {
        
        dataView.roundCorners(cornerRadius: Double(dataView.frame.width / 2))
        labelView.roundCorners(cornerRadius: Double(labelView.frame.width / 2))
    }
}


