//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by Gilbytes on 31.07.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        if userNameTF.text == "User", passwordTF.text == "Password" {
            welcomeVC.welcomeLab = userNameTF.text
        } else {
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login and password")
            passwordTF.text = ""
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func forgotUserNameButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User 😉")
    }
    @IBAction func forgotPasswordButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is Password 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
}

