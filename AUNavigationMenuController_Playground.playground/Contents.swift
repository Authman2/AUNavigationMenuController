//: Playground - noun: a place where people can play

import UIKit
import Foundation
import PlaygroundSupport






class TableViewCont: UITableViewController {
    
    
    override func viewDidLoad() {
        navigationItem.title = "Testing AUNavigationMenuController";
    }
    
}






// Basically just shows what I'm working on.
let tv = TableViewCont();
let navController = AUNavigationMenuController(rootViewController: tv);
//navController.shouldCoverViewContents = true;

PlaygroundPage.current.liveView = navController.view;
