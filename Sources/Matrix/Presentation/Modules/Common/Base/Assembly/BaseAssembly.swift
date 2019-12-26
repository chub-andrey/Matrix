

import Foundation

class BaseAssembly<ViewController: BaseViewController> {
    
    class func createModule(_ context: Context? = nil) -> ViewController {
        return ViewController()
    }
}
