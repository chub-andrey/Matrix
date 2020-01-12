

import UIKit

protocol BirthdayView: View {
}

class BirthdayViewController: BaseViewController {
    
    @IBOutlet weak var waveBackgroundImageView: UIImageView!
    
    var interactor: BirthdayInteractor?
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        waveBackgroundImageView.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: Constants.Animation.duration) {
            self.waveBackgroundImageView.alpha = 1
        }
    }
}

extension BirthdayViewController: BirthdayView {
    
}
