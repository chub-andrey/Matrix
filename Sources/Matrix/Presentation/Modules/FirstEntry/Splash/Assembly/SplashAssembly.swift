

import UIKit

class SplashAssembly: BaseAssembly<SplashViewController> {
    
    override class func createModule(_ context: Context? = nil) -> SplashViewController {
        
        let view = Storyboards.splash.controller as! SplashViewController
        let router = Router(view: view)
        let presenter = SplashPresenterImplementation(router: router, view: view)
        let interactor = SplashInteractorImplementation(presenter: presenter, context: context as? SplashViewContext)
        view.interactor = interactor
        
        return view
    }
}
