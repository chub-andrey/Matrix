

protocol SplashInteractor: Interactor {

}

class SplashInteractorImplementation: BaseInteractor {
    
    private let presenter: SplashPresenter

    init(presenter: SplashPresenter) {
        
        self.presenter = presenter
    }
}

extension SplashInteractorImplementation: SplashInteractor { }
