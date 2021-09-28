//
//  SplashViewController.swift
//  CocktailsAPP
//
//  Created by Алексей on 26.09.2021.
//

import UIKit

class SplashViewController: UIViewController {
    
    @IBOutlet weak var mainViewImage: UIImageView!
    @IBOutlet weak var smallBlackSquare: UIImageView!
    @IBOutlet weak var splashScreenMain: UIImageView!
    
    @IBOutlet weak var buttonForMainTabBarController: UIButton!
//    public var completion: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonForMainTabBarController.layer.cornerRadius = 10
        startAnimation()
    }
    
    @IBAction func buttonActionForMainTabBarController(_ sender: UIButton) {
    }
    
    private func startAnimation() {
        
        mainViewImage.image = UIImage(named: "splashScreen")
        smallBlackSquare.backgroundColor = .black
        splashScreenMain.image = UIImage(named: "splashScreen")
            UIView.animate(
                withDuration: 1.8,
                delay: 0,
                usingSpringWithDamping: 0.3,
                initialSpringVelocity: 1,
                options: [.curveEaseInOut],
                animations: { [weak self] in
                    self?.splashScreenMain.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                    self?.smallBlackSquare.transform = CGAffineTransform(scaleX: 0.0000001, y: 0.0000001)
                    self?.splashScreenMain.alpha = 1
                    self?.smallBlackSquare.alpha = 0.01
            }, completion: { _ in
                UIView.animate(withDuration: 0.4, delay: 0.05, options: .curveEaseIn) { [weak self] in
                    self?.splashScreenMain.transform = CGAffineTransform(scaleX: 10, y: 10)
                    self?.splashScreenMain.alpha = 0.6
                } completion: { [weak self] _ in
                    self?.splashScreenMain.alpha = 0
//                    self?.completion?()
                }
            })
        
        }
    
}
