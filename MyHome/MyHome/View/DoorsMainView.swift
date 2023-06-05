//
//  DoorsMainView.swift
//  MyHome
//
//  Created by SERGEI on 05.06.2023.
//

import UIKit

class DoorsMainView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        backgroundColor = .red
    }
}
