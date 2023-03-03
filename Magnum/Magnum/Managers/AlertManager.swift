//
//  AlertManager.swift
//  Magnum
//
//  Created by Tommy on 3/2/23.
//

import Foundation
import UIKit

class AlertManager {
    private static func showBasicAlert(on vc: UIViewController, title: String, message: String?){
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dissmis", style: .default, handler: nil))
            vc.present(alert, animated: true)
        }
    }
}

// MARK: - Show Validation Alerts
extension AlertManager {
    public static func showInvalidEmailAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Invalid Email", message: "Please enter a valid email.")
    }
    
    public static func showInvalidPasswordAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Invalid Password", message: "Please enter a valid password.")
    }
    
    public static func showInvalidUsernameAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Invalid Username", message: "Please enter a valid username.")
    }
}

// MARK: - Registration Errors
extension AlertManager {
    public static func showRegistrationErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Unknown Registration Error", message: nil)
    }
    
    public static func showRegistrationErrorAlert(on vc: UIViewController, error: Error) {
        self.showBasicAlert(on: vc, title: "Unknown Registration Error", message: "\(error.localizedDescription)")
    }
}

// MARK: - Log In Errors
extension AlertManager {
    public static func showSignInErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Sign In Error", message: nil)
    }
    
    public static func showSignInErrorAlert(on vc: UIViewController, error: Error) {
        self.showBasicAlert(on: vc, title: "Sign In Error", message: "\(error.localizedDescription)")
    }
}

// MARK: - Log out Errors
extension AlertManager {
    public static func showLogOutErrorAlert(on vc: UIViewController, error: Error) {
        self.showBasicAlert(on: vc, title: "Logout Error", message: "\(error.localizedDescription)")
    }
}

// MARK: - Forgot Password Errors
extension AlertManager {
    public static func showPasswordResetSent(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Password Reset Sent", message: nil)
    }
    
    public static func showErrorSendingPasswordReset(on vc: UIViewController, error: Error) {
        self.showBasicAlert(on: vc, title: "Error Sending Password Reset", message: "\(error.localizedDescription)")
    }
}

// MARK: - Fetching User Errors
extension AlertManager {
    public static func showUnknownFetchingUserError(on vc: UIViewController) {
        self.showBasicAlert(on: vc, title: "Unknown Fetching User Errors", message: nil)
    }
    public static func showFetchingUserError(on vc: UIViewController, error: Error) {
        self.showBasicAlert(on: vc, title: "Fetching User Errors", message: "\(error.localizedDescription)")
    }
}
