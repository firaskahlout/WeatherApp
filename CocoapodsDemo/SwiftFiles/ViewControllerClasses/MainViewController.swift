//
//  MainViewController.swift
//  CocoapodsDemo
//
//  Created by IFone on 10/3/19.
//  Copyright © 2019 Firas Alkahlout. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    lazy var viewController: ViewController = {
        var tableVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as? ViewController
        let navigation = UINavigationController(rootViewController: tableVC!)
        self.addChild(navigation)
//        willMove(toParent: self)
        return tableVC!
    }()
    lazy var detailsViewController: DetalsViewController = {
        var detailsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetalsViewController") as? DetalsViewController
        self.addChild(detailsVC!)
        return detailsVC!
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()



        if UIDevice.current.userInterfaceIdiom == .pad {
            
            let splitVC = UISplitViewController()
            splitVC.viewControllers = [self.children[0], self.children[1]]

        }
        
        
    }
    
}
