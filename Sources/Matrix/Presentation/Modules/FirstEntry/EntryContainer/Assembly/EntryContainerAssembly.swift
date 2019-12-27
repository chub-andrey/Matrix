

import UIKit

class EntryContainerAssembly: BaseAssembly<EntryContainerViewController> {
    
    override class func createModule(_ context: Context? = nil) -> EntryContainerViewController {
        
        let view = Storyboards.entryContainer.controller as! EntryContainerViewController
        let router = Router(view: view)
        let presenter = EntryContainerPresenterImplementation(router: router, view: view)
        let interactor = EntryContainerInteractorImplementation(presenter: presenter)
        view.interactor = interactor
        
        return view
    }
}
