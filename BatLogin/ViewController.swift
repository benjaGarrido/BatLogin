//
//  ViewController.swift
//  BatLogin
//
//  Created by Benjamín Garrido Barreiro on 19/12/16.
//  Copyright © 2016 Benjamín Garrido Barreiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgLogoBatman: UIImageView!
    @IBOutlet weak var lblInstructions: UILabel!
    
    var viewAnimator : UIViewPropertyAnimator!
    private let unlockGesture = UIPanGestureRecognizer()
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        unlockGesture.addTarget(self, action: #selector(handle(pan:)))
        self.view.addGestureRecognizer(unlockGesture)
        
        viewAnimator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: nil)
        viewAnimator.addAnimations {
            self.lblInstructions.layer.opacity = 0
            self.imgLogoBatman.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
        }
    }
    
    func handle(pan: UIGestureRecognizer){
        
    }
    
}

