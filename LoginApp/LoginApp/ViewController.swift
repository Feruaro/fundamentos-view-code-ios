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
        self.loginScreen?.delegate(delegate: self)
        self.loginScreen?.configTextFieldDelegate(delegate: self)
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

extension ViewController:LoginScreenProtocol {
    func actionLoginButton() {
        print("login button")
    }
    
    func actionRegisterButton() {
        print("register button")
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("begin")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let texto = textField.text else { return }
        print(texto)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
