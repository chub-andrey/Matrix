

import Foundation

protocol ViewLifeCycleSupportable {
    
    func viewDidLoad()
    func viewDidAppear()
    func viewWillAppear()
}

extension ViewLifeCycleSupportable {
    
    func viewDidLoad() { }
    func viewDidAppear() { }
    func viewWillAppear() { }
}
