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
        
        camerasBottomConstraint.constant = 1.0
//        camerasView.backgroundColor = #colorLiteral(red: 0, green: 0.6730648279, blue: 1, alpha: 1)
//        camerasView.layer.shadowRadius = 2
//        camerasView.layer.shadowOpacity = 1
//        camerasView.layer.shadowPath = CGPath(rect: CGRect(x: 1, y: camerasView.frame.height, width: camerasView.frame.width, height: 2), transform: nil)
//        camerasView.layer.shadowColor = #colorLiteral(red: 0, green: 0.6730648279, blue: 1, alpha: 1)
        
        doorsView.layer.shadowRadius = 1
        doorsView.layer.shadowOpacity = 1
        doorsView.layer.shadowPath = CGPath(rect: CGRect(x: 1, y: doorsView.frame.height , width: doorsView.frame.width, height: 2), transform: nil)
        doorsView.layer.shadowColor = #colorLiteral(red: 0.2451822956, green: 0.2451822956, blue: 0.2451822956, alpha: 1)
        
    }
    
    @IBAction func doorsClick(_ sender: Any) {
        
        camerasMainView.isHidden = true
        doorMainView.isHidden = false
        
        doorsView.layer.shadowRadius = 2
        doorsView.layer.shadowOpacity = 1
        doorsView.layer.shadowPath = CGPath(rect: CGRect(x: 1, y: doorsView.frame.height, width: doorsView.frame.width, height: 2), transform: nil)
        doorsView.layer.shadowColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        
        camerasView.layer.shadowRadius = 2
        camerasView.layer.shadowOpacity = 0.5
        camerasView.layer.shadowPath = CGPath(rect: CGRect(x: 1, y: camerasView.frame.height, width: camerasView.frame.width, height: 2), transform: nil)
        camerasView.layer.shadowColor = #colorLiteral(red: 0.2451822956, green: 0.2451822956, blue: 0.2451822956, alpha: 1)
    }
    
}

extension ViewController {
    // MARK: Setups
    private func startSetupView(){
        
        camerasView.isHidden = false
        //doorsView.backgroundColor = .lightGray
        doorMainView.isHidden = true
        
        
        camerasMainView.backgroundColor = .clear
        doorMainView.backgroundColor = .clear
    }
}

