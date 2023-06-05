//
//  ViewController.swift
//  MyHome
//
//  Created by SERGEI on 20.05.2023.
//

import UIKit

class MainScreen: UIViewController {
    
    private let mainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        return stack
    }()
    
    private let camerasButton: UIButton = {
        let button = UIButton()
        button.setTitle("Камеры", for: .normal)
        button.setTitleColor(UIColor(ciColor: .black), for: .normal)
        return button
    }()
    
    private let doorsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Двери", for: .normal)
        button.setTitleColor(UIColor(ciColor: .black), for: .normal)
        return button
    }()
    
    
    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startSetupView()
        setConstraints()
    }
    
    // MARK: Actions
    
}

extension MainScreen {
    // MARK: Setups
    private func startSetupView(){
        view.backgroundColor = .white
        mainStack.backgroundColor = .clear
        view.addSubview(mainStack)
        mainStack.addArrangedSubview(camerasButton)
        mainStack.addArrangedSubview(doorsButton)
    }
    
    private func setConstraints(){
        
        camerasButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            camerasButton.topAnchor.constraint(equalTo: mainStack.topAnchor),
            camerasButton.leftAnchor.constraint(equalTo: mainStack.leftAnchor),
            camerasButton.widthAnchor.constraint(equalTo: mainStack.widthAnchor, multiplier: 0.5),
            camerasButton.bottomAnchor.constraint(equalTo: mainStack.bottomAnchor)
        ])
        
        doorsButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            doorsButton.topAnchor.constraint(equalTo: mainStack.topAnchor),
            doorsButton.leftAnchor.constraint(equalTo: camerasButton.rightAnchor),
            doorsButton.rightAnchor.constraint(equalTo: mainStack.rightAnchor),
            doorsButton.bottomAnchor.constraint(equalTo: mainStack.bottomAnchor)
        ])
        
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            mainStack.leftAnchor.constraint(equalTo: view.leftAnchor),
            mainStack.rightAnchor.constraint(equalTo: view.rightAnchor),
            mainStack.heightAnchor.constraint(equalToConstant: 100)
        ])
        
    }
}

