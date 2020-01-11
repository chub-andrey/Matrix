
import UIKit

protocol BirthdayInteractor: Interactor {
}

class BirthdayInteractorImplementation: BaseInteractor {
    
    private let presenter: BirthdayPresenter

    init(presenter: BirthdayPresenter) {
        
        self.presenter = presenter
    }
}

extension BirthdayInteractorImplementation: BirthdayInteractor {
}
