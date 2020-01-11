

import UIKit

protocol EntryContainerView: View {
    
    func displaySplashModule(_ viewController: UIViewController)
    func displayBirthdayModule(_ viewController: UIViewController)
}

class EntryContainerViewController: BaseViewController {
    
    var interactor: EntryContainerInteractor?
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var splashContainerView: UIView!
    @IBOutlet weak var birthdayContainerView: UIView!
    @IBOutlet weak var birthdayContainerViewBottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactor?.fetchData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        birthdayContainerView.addGradient(topColor: UIColor.FirstEntry.birthdayViewTopColor,
                                          bottomColor: UIColor.FirstEntry.birthdayViewBottomColor)
        birthdayContainerView.backgroundColor = .red
    }
}

extension EntryContainerViewController: EntryContainerView {
    
    func displaySplashModule(_ viewController: UIViewController) {
        
        addChild(viewController)
        splashContainerView.addSubview(viewController.view)
    }
    
    func displayBirthdayModule(_ viewController: UIViewController) {
        
        animateBirthdayModulePresentation { [weak self] _ in
            
            self?.addChild(viewController)
            self?.birthdayContainerView.addSubview(viewController.view)
            
            self?.animateLogoChanges()
        }
    }
}

extension EntryContainerViewController {
    
    private func animateBirthdayModulePresentation(comletion: ((Bool) -> Void)?) {
        
        birthdayContainerViewBottomConstraint.constant = 0
        
        UIView.animate(withDuration: Constants.Animation.firstEnterShowBirthdatModuleDuration,
                       animations: { self.view.layoutIfNeeded() },
                       completion: comletion)
    }
    
    private func animateLogoChanges() {
        
        let transitionImage = UIImage(named: "LogoGradient")
        
        UIView.transition(with: logoImageView,
                          duration: Constants.Animation.duration,
                          options: .transitionCrossDissolve, animations: { self.logoImageView.image = transitionImage },
                          completion: nil)
    }
}
