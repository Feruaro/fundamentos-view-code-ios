//
//  ViewController.swift
//  LoginApp
//
//  Created by Fernanda Ayres Ruaro on 20/03/25.
//

import UIKit

class ViewController: UIViewController {
    var loginScreen: LoginScreen?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

