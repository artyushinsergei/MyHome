//
//  ViewController.swift
//  MyHome
//
//  Created by SERGEI on 20.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: BottomConstraints
    @IBOutlet weak var camerasBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var doorsBottomConstraint: NSLayoutConstraint!
    
    // MARK: Views
    @IBOutlet weak var camerasView: UIView!
    @IBOutlet weak var doorsView: UIView!
    @IBOutlet weak var camerasMainView: UIView!
    @IBOutlet weak var doorMainView: UIView!
    
    
    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        startSetupView()
    }
    

    
    // MARK: Actions
    @IBAction func camerasClick(_ sender: Any) {
        camerasMainView.isHidden = false
        doorMainView.isHidden = true
        
        camerasBottomConstraint.constant = 2.0
        camerasView.backgroundColor = .tintColor
        
        doorsBottomConstraint.constant = 2
        doorsView.backgroundColor = .lightGray
        
    }
    
    @IBAction func doorsClick(_ sender: Any) {
        
        camerasMainView.isHidden = true
        doorMainView.isHidden = false
        
        camerasBottomConstraint.constant = 2
        camerasView.backgroundColor = .lightGray
        
        doorsBottomConstraint.constant = 2.0
        doorsView.backgroundColor = .tintColor
    }
    
}

extension ViewController {
    // MARK: Setups
    private func startSetupView(){
        camerasBottomConstraint.constant = 2.0
        camerasView.isHidden = false
        doorsBottomConstraint.constant = 2.0
        doorsView.backgroundColor = .lightGray
        doorMainView.isHidden = true
        camerasMainView.backgroundColor = .red
        doorMainView.backgroundColor = .yellow
    }
}

