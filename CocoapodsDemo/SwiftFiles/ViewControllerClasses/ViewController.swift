//
//  ViewController.swift
//  CocoapodsDemo
//
//  Created by IFone on 9/18/19.
//  Copyright © 2019 Firas Alkahlout. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - Outlets.
    @IBOutlet private weak var weatherTableView: UITableView!
    
    //MARK: - Variables.
    private var countryImages = ["moscow2", "kiev4", "london2"]
    private var weatherInformation: WeatherInforamtions!
    
    //MARK: - Constants.
    private enum Math {
        static let cellHeight = 240
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configNavigationBar()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        getDataFromApi()
    }
    
}

// MARK: - Configurations Extension
private extension ViewController {
    
    func configTableView() {
        weatherTableView.delegate = self
        weatherTableView.dataSource = self
        weatherTableView.register(Views().weatherCell, forCellReuseIdentifier: Views().cellIdentifier)
        weatherTableView.rowHeight = CGFloat(Math.cellHeight)
    }
    
    func configNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

// MARK: - API Extension.
extension ViewController {
    
    // MARK: - Geting Data From Api DataBase.
    func getDataFromApi() {
        DataBase().getPlacesName(completion: { (weather, error) in
            if let error = error {
                print(error)
            } else if let weather = weather {
                self.weatherInformation = weather
            }
            self.weatherTableView.reloadData()
        })
    }
}

//MARK: - TableView Extension.
extension ViewController : UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherInformation?.list.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = weatherTableView.dequeueReusableCell(withIdentifier: Views().cellIdentifier, for: indexPath) as! WeatherCell
        let item = weatherInformation.list[indexPath.row]
        let countryImage = countryImages[indexPath.row]
        cell.configData(with: item, countryImage: countryImage)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let showDetals = Optional(Views().detailsViewController)
        {
            let info = weatherInformation.list[weatherTableView.indexPathForSelectedRow!.row]
            showDetals.weather = info
            showDetals.countryImage = countryImages[weatherTableView.indexPathForSelectedRow!.row]
            if let split = splitViewController {
                split.showDetailViewController(showDetals, sender: nil)
            }else {
                present(showDetals, animated: true, completion: nil)
            }
        }
    }
}
