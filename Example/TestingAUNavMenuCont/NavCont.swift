//
//  NavCont.swift
//  TestingAUNavMenuCont
//
//  Created by Adeola Uthman on 11/25/16.
//  Copyright © 2016 Adeola Uthman. All rights reserved.
//

import UIKit

class NavCont: AUNavigationMenuController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dest1 = ViewController();
        let dest2 = ViewController2();
        let dest3 = ViewController3();
        
        addMenuItem(name: "Home", image: UIImage(named: "DetroitMichigan.jpg"), destination: dest1);
        addMenuItem(name: "Profile", image: UIImage(named: "DetroitMichigan.jpg"), destination: dest2);
        addMenuItem(name: "Activity", image: UIImage(named: "DetroitMichigan.jpg"), destination: dest3);
    }

}
