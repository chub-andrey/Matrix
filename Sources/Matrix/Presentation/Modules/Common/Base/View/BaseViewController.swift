

import UIKit

protocol View: class { }

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupInterface()
    }
    
    func setupInterface() { }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
}

// MARK: - View -
extension BaseViewController: View { }
