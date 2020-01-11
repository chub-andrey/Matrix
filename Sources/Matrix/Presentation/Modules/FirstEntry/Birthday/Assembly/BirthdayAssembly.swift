

import UIKit

class BirthdayAssembly: BaseAssembly<BirthdayViewController> {
    
    override class func createModule(_ context: Context? = nil) -> BirthdayViewController {
        
        let view = Storyboards.birthday.controller as! BirthdayViewController
        let router = Router(view: view)
        let presenter = BirthdayPresenterImplementation(router: router, view: view)
        let interactor = BirthdayInteractorImplementation(presenter: presenter)
        view.interactor = interactor
        
        return view
    }
}
