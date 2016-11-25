//
//  NavigationMenuItem.swift
//  TestingAUNavMenuCont
//
//  Created by Adeola Uthman on 11/25/16.
//  Copyright © 2016 Adeola Uthman. All rights reserved.
//

import Foundation
import UIKit


public class NavigationMenuItem {
    
    // The name of the menu item.
    public var name: String!;
    
    
    // The iamge that goes along with the menu item.
    public var image: UIImage?;
    
    
    // The destination view controller for when this menu item is tapped.
    public var destination: UIViewController!;
    
    
    // The view that you are currently on (used for transporting to the next one).
    public var current: UIViewController!;
    
    
    
    
    /////////////////////////
    //
    //  Methods
    //
    /////////////////////////
    
    init(name: String, image: UIImage?, current: UIViewController, destination: UIViewController?) {
        self.name = name;
        self.image = image;
        self.current = current;
        self.destination = destination;
    }
    
    
    
    /* Goes to the destination view controller.
     */
    public func goToDestination() {
        let navCont = current.navigationController as! AUNavigationMenuController;
        if destination.hashValue != current.hashValue {
            destination.navigationItem.hidesBackButton = true;
            navCont.show(destination, sender: current);
        } else {
            navCont.togglePulldownMenu();
        }
    }
    
    
    
}
