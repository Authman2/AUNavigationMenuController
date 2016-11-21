import Foundation
import UIKit



public class AUNavigationMenuController: UINavigationController {
    
    /* Initializers and Basic Setup */
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil);
        setupTapGesture();
    }
    
    public override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController);
        setupTapGesture();
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public override func viewDidLoad() {
        super.viewDidLoad();
        setupTapGesture();
    }
    
    
    public override func didMove(toParentViewController parent: UIViewController?) {
        setupTapGesture();
    }
    
    
    
    
    
    
    /////////////////////////
    //
    //  Variables
    //
    /////////////////////////
    
    // Whether or not the menu is open.
    public var open: Bool = Bool();
    
    
    // The amount to pull the menu down by.
    private let pullAmount: CGFloat = 100;
    
    
    // Whether or not the navigation menu should cover whatever is in the view
    // or if it should move the view along with it.
    public var shouldCoverViewContents = Bool();
    
    
    
    
    
    
    /////////////////////////
    //
    //  Methods
    //
    /////////////////////////
    
    
    
    
    ///////// Setup //////////
    
    /* Sets up the navigation bar so that it can recognize taps by the user. */
    private func setupTapGesture() {
        // Add a tap recognizer
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(AUNavigationMenuController.openPulldownMenu));
        navigationBar.addGestureRecognizer(tapRecognizer);
    }
    
    
    
    /* Opens a pull down style menu. */
    @objc private func openPulldownMenu() {
        // Creates a menu view and adds it behind everything.
        //addMenuView();
        
        
        // Open
        if(!open) {
            UIView.animate(withDuration: 0.35, delay: 0.2, options: [], animations: {
                
                if(self.shouldCoverViewContents) {
                    self.navigationBar.frame.origin.y += self.pullAmount;
                } else {
                    self.view.frame.origin.y += self.pullAmount;
                }
                
            }, completion: nil);
            open = true;
        
        // Close
        } else {
            
            UIView.animate(withDuration: 0.35, delay: 0.2, options: [], animations: {
                
                if(self.shouldCoverViewContents) {
                    self.navigationBar.frame.origin.y -= self.pullAmount;
                } else {
                    self.view.frame.origin.y -= self.pullAmount;
                }
                
            }, completion: nil);
            open = false;
            
        } // End of if-statement.
        
    }
    

    
    
    
    
    ////////// Adding Navigation Pages //////////
    
    
    
    
}
