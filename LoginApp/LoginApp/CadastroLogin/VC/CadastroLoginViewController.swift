//
//  CadastroLoginViewController.swift
//  LoginApp
//
//  Created by Fernanda Ayres Ruaro on 22/03/25.
//

import UIKit

class CadastroLoginViewController: UIViewController {
    
    var cadastroScreen: CadastroLoginScreen?
    
    override func loadView() {
        self.cadastroScreen = CadastroLoginScreen()
        self.view = self.cadastroScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        self.cadastroScreen?.delegate(self)
        self.cadastroScreen?.configTextFieldDelegate(self)
    }

}

extension CadastroLoginViewController: CadastroLoginProtocol {
    func actionBackButton() {
        let vc = LoginViewController()
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func actionRegisterButton() {
        print("botão cadastrar")
    }
}

extension CadastroLoginViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("begin")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.cadastroScreen?.validaTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
