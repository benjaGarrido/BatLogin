//
//  LoginViewController.swift
//  BatLogin
//
//  Created by Benjamín Garrido Barreiro on 21/12/16.
//  Copyright © 2016 Benjamín Garrido Barreiro. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var imgLogoBatman: UIImageView!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUsuario: UITextField!
    @IBOutlet weak var lblPassword: UILabel!
    @IBOutlet weak var lblUsuario: UILabel!
    @IBOutlet weak var imgBatLogin: UIImageView!
    @IBOutlet weak var btnEntrar: UIButton!
    
    var headerAnimator : UIViewPropertyAnimator!
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Sacamos todos los componentes de la visual
        imgLogoBatman.transform = CGAffineTransform(translationX: 0.0, y: -120)
        imgBatLogin.transform = CGAffineTransform(translationX: 0.0, y: -170)
        lblUsuario.transform = CGAffineTransform(translationX: -200.0, y: 0.0)
        lblPassword.transform = CGAffineTransform(translationX: -200.0, y: 0.0)
        txtUsuario.transform = CGAffineTransform(translationX: -350.0, y: 0.0)
        txtPassword.transform = CGAffineTransform(translationX: -350.0, y: 0.0)
    }

    override func viewWillAppear(_ animated: Bool) {
        configureViews()
        buildAnimations()
    }
    
    func configureViews() {
        // Redondeamos el borde de las cajas de texto y el botón
        txtUsuario.layer.cornerRadius = 3.0
        txtPassword.layer.cornerRadius = 3.0
        btnEntrar.layer.cornerRadius = 3.0
    }
    
    func buildAnimations() {
        headerAnimator = UIViewPropertyAnimator(duration: 0.6, curve: .easeInOut, animations: nil)
        headerAnimator.addAnimations {
            self.imgLogoBatman.transform = CGAffineTransform.identity
            self.imgBatLogin.transform = CGAffineTransform.identity
            self.lblUsuario.transform = CGAffineTransform.identity
            self.lblPassword.transform = CGAffineTransform.identity
            self.txtUsuario.transform = CGAffineTransform.identity
            self.txtPassword.transform = CGAffineTransform.identity
        }
        headerAnimator.startAnimation()
    }

}
