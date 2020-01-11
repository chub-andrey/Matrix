

import UIKit

protocol BirthdayPresenter: Presenter {
}

class BirthdayPresenterImplementation: BasePresenter {
    
    private weak var view: BirthdayView?
    
    init(router: Router, view: BirthdayView?) {
        super.init(router: router)
        
        self.view = view
    }
}

extension BirthdayPresenterImplementation: BirthdayPresenter {
}
