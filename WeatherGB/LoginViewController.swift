//
//  LoginViewController.swift
//  WeatherGB
//
//  Created by Дмитрий Скок on 22.02.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var backView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        backView.backgroundColor = .clear
        loginButton.layer.cornerRadius = 6
                
        let tapRecognainizer = UITapGestureRecognizer(target: self, action: #selector(tapFunction))
        self.view.addGestureRecognizer(tapRecognainizer)
    }
    
    @objc func tapFunction () {
        self.view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
    
        if identifier == "moveToMain"{
            guard
                let login = loginTextField.text,
                let password = passwordTextField.text
            else {return false}
            
            if login == "1" && password == "1" {
                return true
            } else {
                showErrorAlert(message: "Не правильные логин или пароль")
                return false
            }
        }
        
        return false
    }
    
    @IBAction func loginButtomPressed(_ sender: Any) {
            print("нажата кнопка в хода")
    }
    
    private func showErrorAlert(message: String) {
        let alert = UIAlertController(title: "Ошибка", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(action)
        present(alert, animated: true)
    }
    
}
