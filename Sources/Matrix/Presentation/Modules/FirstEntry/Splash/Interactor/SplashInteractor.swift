
import UIKit

protocol SplashInteractor: Interactor {
    
    func fetchData()
}

class SplashInteractorImplementation: BaseInteractor {
    
    private let presenter: SplashPresenter

    init(presenter: SplashPresenter) {
        
        self.presenter = presenter
    }
}

extension SplashInteractorImplementation: SplashInteractor {
    
    func fetchData() {
        
        presenter.presentLoadingView()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.presenter.dissmisLoadingView()
        }
    }
}
