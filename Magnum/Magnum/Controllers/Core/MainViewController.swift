//
//  MainViewController.swift
//  Magnum
//
//  Created by Tommy on 3/2/23.
//

import UIKit

class MainViewController: UIViewController {

    var height: CGFloat = 20
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.additionalSafeAreaInsets.top = height
    }
}
