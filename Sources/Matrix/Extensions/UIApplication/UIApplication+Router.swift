

import UIKit

extension UIApplication {
    
    var routerForVisibleViewController: Router? {
        guard let visibleViewController = visibleViewController else {
            return nil
        }
        return Router(view: visibleViewController)
    }

    static var window: UIWindow? {
        
        guard let delegate = UIApplication.shared.delegate,
            let window = delegate.window! else {
                return nil
        }
        return window
    }
    
    static var rootViewController: UIViewController? {
        
        guard let window = UIApplication.window,
            let rootViewController = window.rootViewController
            else { return nil }
        return rootViewController
    }
    
    func presentOnWindowRootView(_ view: UIViewController, embeddedFromNavigation: Bool = false) {
        guard let mainAppDelegate = delegate as? AppDelegate else {
            return
        }
        restrictSystemThemeChanging(for: mainAppDelegate.window)
        mainAppDelegate.window?.rootViewController = embeddedFromNavigation ? view.embeddedFromNavigation : view
        mainAppDelegate.window?.makeKeyAndVisible()
    }
    
    func startDefaultFlow() {
        presentOnWindowRootView(EntryContainerAssembly.createModule())
    }
    
    private func restrictSystemThemeChanging(for window: UIWindow?) {
        if #available(iOS 13.0, *) {
            window?.overrideUserInterfaceStyle = UIUserInterfaceStyle.light
        }
    }
}
