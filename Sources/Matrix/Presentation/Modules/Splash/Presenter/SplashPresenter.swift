

import UIKit

protocol SplashPresenter: Presenter {
    
}

class SplashPresenterImplementation: BasePresenter {
    
    private weak var view: SplashView?
    
    init(router: Router, view: SplashView?) {
        super.init(router: router)
        
        self.view = view
    }
}

extension SplashPresenterImplementation: SplashPresenter {
    
}
