

import UIKit

extension CATransition {
    
    enum TransitionType {
        
        case push
        case pop
        
        var transition: TransitionPresentationType {
            switch self {
            case .push: return CATransition.push()
            case .pop: return CATransition.pop()
            }
        }
    }
    
    typealias TransitionPresentationType = (value: CATransition, key: String)
    
    static func push() -> TransitionPresentationType {
        
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = .push
        transition.subtype = .fromRight
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        
        return (value: transition,
                key: kCATransition)
    }
    
    static func pop() -> TransitionPresentationType {
        
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = .push
        transition.subtype = .fromLeft
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        
        return (value: transition,
                key: kCATransition)
    }
}
