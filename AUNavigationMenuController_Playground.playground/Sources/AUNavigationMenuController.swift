import Foundation
import UIKit



public class AUNavigationMenuController: UINavigationController {
    
    /* Initializers and Basic Setup */
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil);
        setupTapGesture();
        // Creates a menu view and adds it behind everything.
        addMenuView();
    }
    
    public override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController);
        setupTapGesture();
        // Creates a menu view and adds it behind everything.
        addMenuView();
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad();
        setupTapGesture();
        // Creates a menu view and adds it behind everything.
        addMenuView();
    }
    
    public override func didMove(toParentViewController parent: UIViewController?) {
        setupTapGesture();
        // Creates a menu view and adds it behind everything.
        addMenuView();
    }
    
    
    
    
    
    
    /////////////////////////
    //
    //  Variables
    //
    /////////////////////////
    
    // The actual menu
    private let menuView: UIView = UIView();
    
    
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
        
        // Open
        if(!open) {
            
            // Set the height to 0 to prevent premature overlapping.
            if(shouldCoverViewContents) {
                self.menuView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 0);
            }
            
            UIView.animate(withDuration: 0.35, delay: 0.2, options: [], animations: {
                
                if(self.shouldCoverViewContents) {
                    self.navigationBar.frame.origin.y += self.pullAmount;
                    self.view.bringSubview(toFront: self.menuView);
                    self.changeMenuSize(grow: true);
                } else {
                    self.view.frame.origin.y += self.pullAmount;
                    self.menuView.frame.origin.y -= self.pullAmount;
                }
                
            }, completion: nil);
            open = true;
        
        // Close
        } else {
            
            UIView.animate(withDuration: 0.35, delay: 0.2, options: [], animations: {
                
                if(self.shouldCoverViewContents) {
                    self.navigationBar.frame.origin.y -= self.pullAmount;                    self.changeMenuSize(grow: false);
                } else {
                    self.view.frame.origin.y -= self.pullAmount;
                    self.menuView.frame.origin.y += self.pullAmount;
                }
                
            }, completion: nil);
            open = false;
            
            
        } // End of if-statement.
        
    }
    
    
    /* Adjusts the size of the menu over a period of time. */
    private func changeMenuSize(grow: Bool) {
        if(grow) {
            self.menuView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: pullAmount);
        } else {
            self.menuView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 0);
        }
    }
    

    
    
    
    
    ////////// Adding Navigation Pages //////////
    
    private func addMenuView() {
        // Initialize the menu view
        menuView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: pullAmount);
        menuView.backgroundColor = UIColor.green;
        
        
        // Add the menu view to the container
        view.addSubview(menuView);
        view.sendSubview(toBack: menuView);
    }
    
    
}
