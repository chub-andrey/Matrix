
import UIKit

enum Storyboards: String {
    
    case splash = "Splash"
    
    var controller: UIViewController {
        let storyboard = UIStoryboard(name: rawValue, bundle: nil)
        return storyboard.instantiateInitialViewController()!
    }
    
    func initialController<ViewController: UIViewController>() -> ViewController {
        let storyboard = UIStoryboard(name: rawValue, bundle: nil)
        return storyboard.instantiateInitialViewController() as! ViewController
    }
}
