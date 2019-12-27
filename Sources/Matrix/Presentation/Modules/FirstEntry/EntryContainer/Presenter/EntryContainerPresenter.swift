

import UIKit

protocol EntryContainerPresenter: Presenter {
    
}

class EntryContainerPresenterImplementation: BasePresenter {
    
    private weak var view: EntryContainerView?
    
    init(router: Router, view: EntryContainerView?) {
        super.init(router: router)
        
        self.view = view
    }
}

extension EntryContainerPresenterImplementation: EntryContainerPresenter {
    
}
