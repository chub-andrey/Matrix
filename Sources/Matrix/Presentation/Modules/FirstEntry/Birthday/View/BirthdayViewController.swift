

import UIKit

protocol BirthdayView: View {
}

class BirthdayViewController: BaseViewController {
    
    var interactor: BirthdayInteractor?
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

extension BirthdayViewController: BirthdayView {
    
}
