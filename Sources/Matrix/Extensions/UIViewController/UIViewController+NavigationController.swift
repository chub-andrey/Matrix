

import UIKit

extension UIViewController {
    
    var embeddedFromNavigation: BaseNavigationController {
        return BaseNavigationController(rootViewController: self)
    }
}
