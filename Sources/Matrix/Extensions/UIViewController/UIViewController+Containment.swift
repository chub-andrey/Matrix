

import UIKit

extension UIViewController {
    
    func add(asChild module: UIViewController,
             container: UIView? = nil,
             fromBounds: Bool = false) {
        
        self.addChild(module)
        
        let containerView = container ?? self.view
        containerView!.addSubview(module.view)
        
        if fromBounds {
            module.view.frame = containerView!.bounds
            module.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
        
        module.didMove(toParent: self)
    }
    
    func remove(asChild module: UIViewController) {
        
        module.willMove(toParent: nil)
        
        module.view.removeFromSuperview()
        module.removeFromParent()
    }
    
    func removeChilds() {
        
        children.forEach {
            self.remove(asChild: $0)
        }
    }
}
