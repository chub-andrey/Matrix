

import UIKit

protocol EntryContainerPresenter: Presenter {
    
    func presentSplashModule(_ viewController: UIViewController)
    func presentBirthdayModule(_ viewController: UIViewController)
}

class EntryContainerPresenterImplementation: BasePresenter {
    
    private weak var view: EntryContainerView?
    
    init(router: Router, view: EntryContainerView?) {
        super.init(router: router)
        
        self.view = view
    }
}

extension EntryContainerPresenterImplementation: EntryContainerPresenter {
    
    func presentSplashModule(_ viewController: UIViewController) {
        view?.displaySplashModule(viewController)
    }
    
    func presentBirthdayModule(_ viewController: UIViewController) {
        view?.displayBirthdayModule(viewController)
    }
}
