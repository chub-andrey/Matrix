
import UIKit

enum Storyboards: String {
    
    case entryContainer = "EntryContainer"
    case splash = "Splash"
    case birthday = "Birthday"
    
    var controller: UIViewController {
        let storyboard = UIStoryboard(name: rawValue, bundle: nil)
        return storyboard.instantiateInitialViewController()!
    }
    
    func initialController<ViewController: UIViewController>() -> ViewController {
        let storyboard = UIStoryboard(name: rawValue, bundle: nil)
        return storyboard.instantiateInitialViewController() as! ViewController
    }
}
