import Foundation
import UIKit



public class AUNavigationMenuController: UINavigationController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
    // The collection view with all of the menu pages.
    var collectionView: UICollectionView!;
    
    
    
    
    /* Initializers and Basic Setup */
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil);
        setupCollectionView();
        setupTapGesture();
        // Creates a menu view and adds it behind everything.
        addMenuView();
    }
    
    public override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController);
        setupCollectionView();
        setupTapGesture();
        // Creates a menu view and adds it behind everything.
        addMenuView();
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad();
        setupCollectionView();
        setupTapGesture();
        // Creates a menu view and adds it behind everything.
        addMenuView();
    }
    
    public override func didMove(toParentViewController parent: UIViewController?) {
        setupCollectionView();
        setupTapGesture();
        // Creates a menu view and adds it behind everything.
        addMenuView();
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
    
    
    /* Setup what's needed for the collection view. */
    private func setupCollectionView() {
        let layout = UICollectionViewFlowLayout();
        layout.scrollDirection = .horizontal;
        
        collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: pullAmount), collectionViewLayout: layout);
        collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell");
        collectionView.alwaysBounceHorizontal = true;
        collectionView.showsHorizontalScrollIndicator = false;
        collectionView.showsVerticalScrollIndicator = false;
    }
    
    
    
    /* Opens a pull down style menu. */
    @objc private func openPulldownMenu() {
        
        // Open
        if(!open) {
            
            self.collectionView.frame.origin = CGPoint(x: 0, y: -self.pullAmount);
            self.view.bringSubview(toFront: self.collectionView);
            
            UIView.animate(withDuration: 0.35, delay: 0.2, options: [], animations: {
                
                self.navigationBar.frame.origin.y += self.pullAmount;
                self.collectionView.frame.origin.y += self.pullAmount;
                
            }, completion: { (bool: Bool) in
                
                self.open = true;
                
            });
        
        // Close
        } else {
            
            UIView.animate(withDuration: 0.35, delay: 0.2, options: [], animations: {
                
                self.navigationBar.frame.origin.y -= self.pullAmount;
                self.collectionView.frame.origin = CGPoint(x: 0, y: -self.pullAmount);
                
            }, completion: { (bool: Bool) in
                
                self.view.sendSubview(toBack: self.collectionView);
                self.open = false;
                
            });
            
        } // End of if-statement.
        
    }
    
    
    
    
    ////////// Adding Navigation Pages //////////
    
    private func addMenuView() {
        // Initialize the collection view
        collectionView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: pullAmount);
        
        
        // Add the menu view to the container
        view.addSubview(collectionView);
        view.sendSubview(toBack: collectionView);
        collectionView.backgroundColor = UIColor(red: 248/255.0, green: 248/255.0, blue: 248/255.0, alpha: 1.0);
        
        collectionView.delegate = self;
        collectionView.dataSource = self;
    }
    
    
    
    
    
    
    
    /////////// Collection View Stuff ////////////
    
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10;
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath);
        
        cell.backgroundColor = UIColor.red;
        
        return cell;
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: pullAmount - 10);
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10;
    }
    
}
