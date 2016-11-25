//
//  ViewController3.swift
//  TestingAUNavMenuCont
//
//  Created by Adeola Uthman on 11/25/16.
//  Copyright © 2016 Adeola Uthman. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.red;
        
        navigationItem.title = "Working 3";
        
        let v = UIView();
        v.backgroundColor = UIColor.brown;
        
        view.addSubview(v);
        v.anchorToEdge(.bottom, padding: 0, width: 100, height: 500);
    }
}
