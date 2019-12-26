

import UIKit

class Router {
    
    private(set) weak var view: UIViewController?

    init(view: UIViewController) {
        self.view = view
    }
}

// MARK: Modal presentation

extension Router {
    
    func present(_ destinationView: UIViewController,
                 animated: Bool = true,
                 completion: EmptyClosureType? = nil) {
        
        // https://stackoverflow.com/questions/21075540/presentviewcontrolleranimatedyes-view-will-not-appear-until-user-taps-again
        DispatchQueue.main.async {
            self.view?.present(destinationView,
                               animated: animated,
                               completion: completion)
        }
    }

    func dismiss() {
        view?.view.endEditing(true)
        view?.dismiss(animated: true, completion: nil)
    }

    func dismiss(animated: Bool, completion: EmptyClosureType? = nil) {
        view?.view.endEditing(true)
        view?.dismiss(animated: animated, completion: completion)
    }
}

// MARK: Push/Pop presentation

extension Router {
	
	func push(_ destinationView: UIViewController) {
        view?.navigationController?.pushViewController(destinationView,
                                                       animated: true)
	}
	
	func pop(to destinationView: UIViewController) {
        view?.navigationController?.popToViewController(destinationView,
                                                        animated: true)
	}
    
    func pop() {
        view?.navigationController?.popViewController(animated: true)
    }
    
    func popToRoot() {
        view?.navigationController?.popToRootViewController(animated: true)
    }
}

// MARK: View transitions

extension Router {
    
    func transitTo(view: UIViewController,
                   embeddedFromNavigation: Bool = false,
                   withTransition type: CATransition.TransitionType? = nil) {
        
        guard let window = UIApplication.window,
            let rootViewController = UIApplication.rootViewController else {
            return
        }
        
        let view = embeddedFromNavigation ? BaseNavigationController(rootViewController: view) : view
        
        if let presentingViewController = self.view?.presentingViewController {
            presentingViewController.dismiss(animated: false, completion: nil)
        } else if self.view?.presentedViewController != nil {
            self.view?.dismiss(animated: false, completion: nil)
        }
        
        rootViewController.dismiss(animated: false, completion: nil)
        
        window.rootViewController = view
        
        if let type = type {
            window.layer.add(type.transition.value, forKey: type.transition.key)
        }
    }
    
    func transitTo(_ view: UIViewController, embeddedFromNavigation: Bool = false) {
        guard
            let window = UIApplication.shared.delegate?.window!,
            let rootViewController = window.rootViewController
        else {
            return
        }
        
        let view = embeddedFromNavigation ? view.embeddedFromNavigation : view
        
        if let presentingViewController = self.view?.presentingViewController {
            presentingViewController.dismiss(animated: false, completion: nil)
        } else if self.view?.presentedViewController != nil {
            self.view?.dismiss(animated: false, completion: nil)
        }
        
        rootViewController.dismiss(animated: false, completion: nil)
        window.rootViewController = view
    }
}

// unpack view controllers from stack

extension Router {
    
    func viewControllerFromStack<ViewController>() -> ViewController? {
        return viewControllersFromStack()?
            .first
    }
    
    func viewControllersFromStack<ViewController>() -> [ViewController]? {
        return view?.navigationController?.viewControllers
            .compactMap({ $0 as? ViewController })
    }
}
