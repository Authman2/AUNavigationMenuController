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
        
        dest1.navigationItem.title = "Testing Application";
        dest2.navigationItem.title = "Testing Application";
        dest3.navigationItem.title = "Testing Application";
        
        addMenuItem(name: "Home", image: UIImage(named: "DetroitMichigan.jpg"), destination: dest1, asHome: false);
        addMenuItem(name: "Profile", image: UIImage(named: "DetroitMichigan.jpg"), destination: dest2, asHome: true);
        addMenuItem(name: "Activity", image: UIImage(named: "DetroitMichigan.jpg"), destination: dest3, asHome: false);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
