

import UIKit

protocol SplashView: View {
}

class SplashViewController: BaseViewController {
    
    @IBOutlet private weak var splashImageView: UIImageView!
    
    var interactor: SplashInteractor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }    
}

extension SplashViewController: SplashView {
}
