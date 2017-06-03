//
//  ViewController.swift
//  LottieDemo
//
//  Created by Nylah Julmice on 6/2/17.
//  Copyright © 2017 Nylah Julmice. All rights reserved.
//

import Lottie
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Local JSON animation file
        //if let animationView = LOTAnimationView(name: "servishero_loading") {
        
        // Remote JSON animation file
        if let animationView = LOTAnimationView(contentsOf: URL(string: "https://github.com/airbnb/lottie-ios/raw/master/Example/Assets/PinJump.json")!) {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            animationView.contentMode = .scaleAspectFill
            animationView.loopAnimation = true
            animationView.animationSpeed = 0.5
            
            let rotateTransform = CGAffineTransform(rotationAngle: 45.0)
            animationView.transform = rotateTransform
            
            // Applying UIView animation
            let minimizeTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            animationView.transform = minimizeTransform
            UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
                animationView.transform = CGAffineTransform.identity
            }, completion: nil)
            
            view.addSubview(animationView)
            
            animationView.play()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

