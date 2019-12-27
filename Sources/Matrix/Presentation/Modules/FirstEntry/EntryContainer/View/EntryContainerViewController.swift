

import UIKit

protocol EntryContainerView: View {
}

class EntryContainerViewController: BaseViewController {
    
    var interactor: EntryContainerInteractor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }    
}

extension EntryContainerViewController: EntryContainerView {
}
