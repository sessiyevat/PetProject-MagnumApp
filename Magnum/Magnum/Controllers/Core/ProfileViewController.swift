//
//  ProfileViewController.swift
//  Magnum
//
//  Created by Tommy on 3/2/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    //password Sessiyeva1312@
    
    private let button: UIButton = {
       let button = UIButton()
        button.setTitle("Logout", for: .normal)
        button.setTitleColor(UIColor(named: "main"), for: .normal)
        return button
    }()
    
    private let label: UILabel = {
       let label = UILabel()
        label.text = "Loading..."
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        AuthService.shared.fetchUser { [weak self] user, error in
            guard let self = self else { return }
            if let error = error {
                AlertManager.showFetchingUserError(on: self, error: error)
                return
            }
            
            if let user = user {
                self.label.text = "\(user.username)\n \(user.email)"
            }
        }
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(label)
        view.addSubview(button)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            label.heightAnchor.constraint(equalToConstant: 220),
            
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 12),
            button.centerXAnchor.constraint(equalTo: label.centerXAnchor),
            button.heightAnchor.constraint(equalToConstant: 55),
            button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
        ])
        
        button.addTarget(self, action: #selector(didTapLogout), for: .touchUpInside)
    }

    @objc func didTapLogout() {
        AuthService.shared.signOut { [weak self] error in
            guard let self = self else { return }
            if let error = error {
                AlertManager.showLogOutErrorAlert(on: self, error: error)
                return
            }
            
            if let sceneDelegate = self.view.window?.windowScene?.delegate as? SceneDelegate {
                sceneDelegate.checkAuthentification()
            }
        }
    }
}
