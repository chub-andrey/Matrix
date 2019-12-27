

import UIKit

protocol SplashPresenter: Presenter {
    
    func presentLoadingView()
    func dissmisLoadingView()
}

class SplashPresenterImplementation: BasePresenter {
    
    private weak var view: SplashView?
    
    init(router: Router, view: SplashView?) {
        super.init(router: router)
        
        self.view = view
    }
}

extension SplashPresenterImplementation: SplashPresenter {
    
    func presentLoadingView() {
        view?.displayLoadingView()
    }
    
    func dissmisLoadingView() {
        view?.dissmisLoadingView()
    }
}
