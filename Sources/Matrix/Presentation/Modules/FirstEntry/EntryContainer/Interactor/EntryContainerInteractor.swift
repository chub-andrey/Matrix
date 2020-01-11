
import UIKit

protocol EntryContainerInteractor: Interactor {

    func fetchData()
    func showDateBirthdayView()
}

class EntryContainerInteractorImplementation: BaseInteractor {
    
    private let presenter: EntryContainerPresenter

    init(presenter: EntryContainerPresenter) {
        
        self.presenter = presenter
    }
}

extension EntryContainerInteractorImplementation: EntryContainerInteractor {
    
    func fetchData() {
        
        let splashViewContext = SplashViewContext { [weak self] in
            self?.showDateBirthdayView()
        }
        
        let vc = SplashAssembly.createModule(splashViewContext)
        presenter.presentSplashModule(vc)
    }
    
    func showDateBirthdayView() {
        
        let vc = BirthdayAssembly.createModule()
        presenter.presentBirthdayModule(vc)
    }
}
