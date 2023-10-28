//
//  SecondScreen.swift
//  DavalebaNew16
//
//  Created by Lika Nozadze on 10/27/23.
//

import UIKit

class SecondScreen: UIViewController {
    let presentColorPalettePage = UIButton()
    let pushColorPalettePage = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        view.backgroundColor = .systemMint
        title = "First Screen"
        
    }
    func setupButton() {
        view.addSubview(presentColorPalettePage)
        view.addSubview(pushColorPalettePage)
        presentColorPalettePage.configuration = .filled()
        presentColorPalettePage.configuration?.baseBackgroundColor = .systemPink
        presentColorPalettePage.configuration?.title = "Present Color Palette Page"
        pushColorPalettePage.configuration = .filled()
        pushColorPalettePage.configuration?.baseBackgroundColor = .systemYellow
        pushColorPalettePage.configuration?.title = "Push Color Palette Page"
        
        
        
        presentColorPalettePage.translatesAutoresizingMaskIntoConstraints = false
        pushColorPalettePage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            presentColorPalettePage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            presentColorPalettePage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            presentColorPalettePage.widthAnchor.constraint(equalToConstant: 292),
            presentColorPalettePage.heightAnchor.constraint(equalToConstant: 45),
            pushColorPalettePage.topAnchor.constraint(equalTo: presentColorPalettePage.bottomAnchor, constant: 16),
            pushColorPalettePage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
        ])
        presentColorPalettePage.addTarget(self, action: #selector(goToThirdScreen), for: .touchUpInside)
        pushColorPalettePage.addTarget(self, action: #selector(goToThirdScreen), for: .touchUpInside)
    }
    
    @objc func goToThirdScreen() {
        let thirdScreen = ThirdScreen()
        thirdScreen.title = "Color Palette"
        navigationController?.pushViewController(thirdScreen, animated: true)
    }
}
