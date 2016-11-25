//
//  ViewController.swift
//  TestingAUNavMenuCont
//
//  Created by Adeola Uthman on 11/24/16.
//  Copyright © 2016 Adeola Uthman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var navCont: AUNavigationMenuController!;
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navCont = navigationController as! AUNavigationMenuController;
        navigationItem.title = "Testing Application";
        view.backgroundColor = UIColor.green;
        
        
        
        let dest = ViewController2();
        
        
        navCont.addMenuItem(name: "Home", image: UIImage(named: "DetroitMichigan.jpg"), current: self, destination: dest);
        navCont.addMenuItem(name: "Profile", image: nil, current: self, destination: dest);
        navCont.addMenuItem(name: "Explore", image: UIImage(named: "DetroitMichigan.jpg"), current: self, destination: dest);
        navCont.addMenuItem(name: "Activity", image: UIImage(named: "DetroitMichigan.jpg"), current: self, destination: dest);
    }
    
    
    
}

