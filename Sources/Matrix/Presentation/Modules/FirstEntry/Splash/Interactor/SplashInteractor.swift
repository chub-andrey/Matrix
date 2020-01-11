
import UIKit

struct SplashViewContext: Context {
    
    var loadingHandler: EmptyClosureType?
}

protocol SplashInteractor: Interactor {
    
    func fetchData()
    func presentNextModule()
}

class SplashInteractorImplementation: BaseInteractor {
    
    private let presenter: SplashPresenter
    
    private let context: SplashViewContext?

    init(presenter: SplashPresenter, context: SplashViewContext?) {
        
        self.presenter = presenter
        self.context = context
    }
}

extension SplashInteractorImplementation: SplashInteractor {
    
    func fetchData() {
        
        presenter.presentLoadingView()
        
        // Temp Test Code
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.presenter.dissmisLoadingView()
        }
    }
    
    func presentNextModule() {
        context?.loadingHandler?()
    }
}
