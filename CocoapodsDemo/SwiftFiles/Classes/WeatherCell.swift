//
//  WeatherCell.swift
//  CocoapodsDemo
//
//  Created by IFone on 9/25/19.
//  Copyright © 2019 Firas Alkahlout. All rights reserved.
//

import UIKit

final class WeatherCell: UITableViewCell {

    // MARK: - Outlets.
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var weatherLbl: UILabel!
    @IBOutlet weak var minAndMaxLbl: UILabel!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var humidityLbl: UILabel!
    
    // MARK: - Variables.
    enum Math {
        static let radius: CGFloat = 12
        static let borderWidth: CGFloat = 1
        static let shadowOpacity: Float = 1
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
        configViews()
    }

}

// MARK: - Config Extension.
extension WeatherCell {
    
    private func configViews() {
        background.layer.cornerRadius = Math.radius
        background.layer.borderWidth = Math.borderWidth
        background.layer.borderColor = UIColor.white.cgColor
        mainView.layer.shadowColor = UIColor.lightGray.cgColor
        mainView.layer.shadowOffset = CGSize(width: 0, height: 4)
        mainView.layer.shadowOpacity = Math.shadowOpacity
        mainView.layer.cornerRadius = Math.radius
    }
    
    func configData(with item: List , countryImage: String) {
        
        nameLbl.text = "\(String(describing: item.name)),\(String(describing: item.sys.country))"
        weatherLbl.text = String(describing: item.main.temp)
        
        humidityLbl.text = "Humidity: \(String(describing: item.main.humidity))%"
        background.image = UIImage(named: countryImage)
        minAndMaxLbl.text = "\(String(describing: item.main.tempMin)) ~ \(String(describing: item.main.tempMax))"
    }
    
}
