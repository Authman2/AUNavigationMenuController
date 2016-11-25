//
//  ViewController.swift
//  TestingAUNavMenuCont
//
//  Created by Adeola Uthman on 11/24/16.
//  Copyright © 2016 Adeola Uthman. All rights reserved.
//

import UIKit
import Neon

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Working";
        view.backgroundColor = UIColor.green;
        
        
        let v = UIView();
        v.backgroundColor = UIColor.orange;
        
        view.addSubview(v);
        v.anchorToEdge(.right, padding: 0, width: 100, height: 500);
    }
    
    
    
}

