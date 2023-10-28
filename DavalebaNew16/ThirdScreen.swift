//
//  ThirdScreen.swift
//  DavalebaNew16
//
//  Created by Lika Nozadze on 10/28/23.
//

import UIKit

class ThirdScreen: UIViewController {
    
    let homeLabel: UILabel = {
        let label1 = UILabel()
        label1.text = "Change Home Buttons Background Colors"
        label1.font = UIFont.systemFont(ofSize: 20)
        label1.textAlignment = .center
        return label1
    }()
    
    
    
    let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        setupLabel1()
        setupButtons()
    }
    
    func setupLabel1() {
        view.addSubview(homeLabel)
        homeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            homeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            homeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
        ])
    }
    func setupButtons() {
        for i in 1...6 {
            let button = UIButton()
            button.setTitle("Button \(i)", for: .normal)
            button.backgroundColor = randomColor()
            button.addTarget(self, action: #selector(changeBackgroundColor), for: .touchUpInside)
            buttonStackView.addArrangedSubview(button)
        }
        
        view.addSubview(buttonStackView)
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonStackView.topAnchor.constraint(equalTo: homeLabel.bottomAnchor, constant: 20),
        ])
    }
    
    @objc func changeBackgroundColor(_ sender: UIButton) {
        sender.backgroundColor = randomColor()
    }
    
    func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

