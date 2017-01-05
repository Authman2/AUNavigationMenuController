//
//  AUNavigationMenuOptions.swift
//  Pods
//
//  Created by Adeola Uthman on 1/4/17.
//
//

import Foundation
import UIKit


public class AUNavigationMenuOptions: NSObject {
    
    /// Color of the text. Black by default.
    public var itemTextColor: UIColor = .black;
    
    
    /// The amount of spacing between menu cells.
    public var itemSpacing: CGFloat = 10;
    
    
    /// The size of the menu items.
    public var itemSize: CGSize = CGSize(width: 0, height: 0);
    
    
    
    
    
    
    override init() {
        super.init();
    }
    
    
    
}