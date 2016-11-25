//
//  ViewController2.swift
//  TestingAUNavMenuCont
//
//  Created by Adeola Uthman on 11/25/16.
//  Copyright © 2016 Adeola Uthman. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.blue;
        
        navigationItem.title = "Working 2";
        
        let v = UIView();
        v.backgroundColor = UIColor.purple;
        
        view.addSubview(v);
        v.anchorToEdge(.left, padding: 0, width: 100, height: 500);
    }

}
