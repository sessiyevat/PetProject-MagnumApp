//
//  CustomButton.swift
//  Magnum
//
//  Created by Tommy on 3/2/23.
//

import UIKit

class CustomButton: UIButton {

    enum FontSize {
        case large
        case medium
        case small
    }
    
    init(title: String, hasBackground: Bool = false, fontSize: FontSize) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        
        self.backgroundColor = hasBackground ? UIColor(named: "main") : .clear
        
        let titleColor: UIColor = hasBackground ? .white : UIColor(named: "main")!
        self.setTitleColor(titleColor, for: .normal)
        
        switch fontSize {
        case .large:
            self.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        case .medium:
            self.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        case .small:
            self.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
