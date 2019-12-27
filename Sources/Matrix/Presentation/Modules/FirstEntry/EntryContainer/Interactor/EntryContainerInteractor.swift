

protocol EntryContainerInteractor: Interactor {

}

class EntryContainerInteractorImplementation: BaseInteractor {
    
    private let presenter: EntryContainerPresenter

    init(presenter: EntryContainerPresenter) {
        
        self.presenter = presenter
    }
}

extension EntryContainerInteractorImplementation: EntryContainerInteractor { }
