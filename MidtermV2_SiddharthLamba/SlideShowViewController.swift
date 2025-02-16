//
//  SlideShowViewController.swift
//  MidtermV2_SiddharthLamba
//
//  Created by Siddharth Lamba on 2025-02-14.
//
//

import UIKit

class SlideShowViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!

    let carImages = ["car1.png", "car2.png", "car3.png", "car4.png", "car5.JPG"]
    var currentIndex = 0
    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.startFadeAndRotateAnimation()
        }
        startSlideshow()
    }

    func startFadeAndRotateAnimation() {
        let fadeAnimation = CABasicAnimation(keyPath: "opacity")
        fadeAnimation.fromValue = 1.0
        fadeAnimation.toValue = 0.0
        fadeAnimation.duration = 2.0
        fadeAnimation.autoreverses = true
        fadeAnimation.repeatCount = .infinity
        fadeAnimation.fillMode = .forwards
        fadeAnimation.isRemovedOnCompletion = false

        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotationAnimation.fromValue = 0
        rotationAnimation.toValue = Double.pi * 2
        rotationAnimation.duration = 3.0
        rotationAnimation.repeatCount = .infinity
        rotationAnimation.fillMode = .forwards
        rotationAnimation.isRemovedOnCompletion = false

        let animationGroup = CAAnimationGroup()
        animationGroup.animations = [fadeAnimation, rotationAnimation]
        animationGroup.duration = 3.0
        animationGroup.repeatCount = .infinity
        animationGroup.fillMode = .forwards
        animationGroup.isRemovedOnCompletion = false

        imageView2.layer.add(animationGroup, forKey: "fadeAndRotate")
    }

    func startSlideshow() {
        imageView.image = UIImage(named: carImages[currentIndex])
        
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(nextImage), userInfo: nil, repeats: true)
    }

    @objc func nextImage() {
        currentIndex = (currentIndex + 1) % carImages.count
        UIView.transition(with: imageView, duration: 0.5, options: .transitionCrossDissolve, animations: {
            self.imageView.image = UIImage(named: self.carImages[self.currentIndex])
        }, completion: nil)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        timer?.invalidate()
    }
}
