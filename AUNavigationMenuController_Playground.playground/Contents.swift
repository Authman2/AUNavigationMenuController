//: Playground - noun: a place where people can play

import UIKit
import Foundation
import PlaygroundSupport






class vc: UIViewController {
    
    
    override func viewDidLoad() {
        navigationItem.title = "Testing AUNavigationMenuController";
    }
}






// Basically just shows what I'm working on.
let viewController = vc();
let navController = AUNavigationMenuController(rootViewController: viewController);

PlaygroundPage.current.liveView = navController.view;
