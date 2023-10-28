//
//  ViewController.swift
//  DavalebaNew16
//
//  Created by Lika Nozadze on 10/27/23.
//
//
import UIKit

class FirstScreen: UIViewController {
    
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.borderStyle = .roundedRect
        textField.frame = CGRect(x: 0, y: 0, width: 289, height: 53)
        
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.borderStyle = .roundedRect
        textField.frame = CGRect(x: 0, y: 0, width: 289, height: 53)
        return textField
    }()
    
    let forgotPassword: UITextField = {
        let textField = UITextField()
        textField.text = "Forgot Your Password?"
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.textColor = UIColor.gray
        
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor.white
        
        let signInLabel: UILabel = {
            let label = UILabel()
            label.text = "Sign In"
            label.font = UIFont.systemFont(ofSize: 28)
            label.textAlignment = .center
            return label
        }()
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(signInLabel)
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(forgotPassword)
        view.addSubview(stackView)
        
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 52),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -52),
            stackView.widthAnchor.constraint(equalToConstant: 1200),
            stackView.heightAnchor.constraint(equalToConstant: 195)
        ])
        
        let signInButton: UIButton = {
            let button = UIButton()
            button.setTitle("Sign In", for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .blue
            button.frame = CGRect(x: 0, y: 0, width: 292, height: 45)
            button.layer.cornerRadius = 15
            return button
        }()
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        stackView.addArrangedSubview(signInButton)
        view.addSubview(stackView)
        
        signInButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
    }
    
    @objc func goToNextScreen() {
        let nextScreen = SecondScreen()
        nextScreen.title = "Home Page"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    
}
