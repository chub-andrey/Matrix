

import UIKit
import NVActivityIndicatorView

protocol SplashView: View {
    
    func displayLoadingView()
    func dissmisLoadingView()
}

class SplashViewController: BaseViewController {
    
    private enum Constans {
        enum ActivityIndicator {
            static let paddingX: CGFloat = 55
            static let positionY: CGFloat = -2
            static let size = CGSize(width: 22, height: 22)
        }
        
        enum LoadingView {
            static let show: CGFloat = -34
            static let hide: CGFloat = 22
        }
    }
    
    @IBOutlet weak var loadingContainerView: UIView!
    @IBOutlet weak var loadingViewBottomConstraint: NSLayoutConstraint!
    
    private lazy var activityIndicator: NVActivityIndicatorView = {
        
        let rect = CGRect(x: self.loadingContainerView.frame.size.width - Constans.ActivityIndicator.paddingX,
                          y: Constans.ActivityIndicator.positionY,
                          width: Constans.ActivityIndicator.size.width,
                          height: Constans.ActivityIndicator.size.height)
        
        return NVActivityIndicatorView(frame: rect, type: .circleStrokeSpin, color: .silver, padding: 0)
    }()
    
    var interactor: SplashInteractor?
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setActivityViewVisible(false, animated: false)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        loadingContainerView.addSubview(activityIndicator)
        
        interactor?.fetchData()
    }
}

extension SplashViewController: SplashView {
    
    func displayLoadingView() {
        
        animateActivityIndicator(true)
        setActivityViewVisible(true, animated: true)
    }
    
    func dissmisLoadingView() {
        
        animateActivityIndicator(false)
        setActivityViewVisible(false, animated: true)
    }
}
 
extension SplashViewController {
    
    private func setActivityViewVisible(_ visible: Bool, animated: Bool) {
        
        loadingViewBottomConstraint.constant = visible ? Constans.LoadingView.show : Constans.LoadingView.hide
        
        if animated {
            UIView.animate(withDuration: Constants.Animation.duration) {
                self.view.layoutIfNeeded()
            }
        } else {
            view.layoutIfNeeded()
        }
    }
    
    private func animateActivityIndicator(_ animate: Bool) {
        
        activityIndicator.isHidden = !animate
        
        if animate {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
        }
    }
}
