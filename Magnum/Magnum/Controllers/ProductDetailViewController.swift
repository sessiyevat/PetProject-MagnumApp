//
//  ProductDetailViewController.swift
//  Magnum
//
//  Created by Tommy on 3/14/23.
//

import UIKit
import SnapKit

class ProductDetailViewController: UIViewController {

    // MARK: - Variables

    private var product: Product
    
    // MARK: - UI Components

    private let imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let productNameLabel: UILabel = {
       let label = UILabel()
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24, weight: .regular)
        return label
    }()
    
    private let priceLabel: UILabel = {
       let label = UILabel()
        label.textColor = UIColor(named: "main")
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        return label
    }()
    
    private let addButton: UIButton = {
        let button = UIButton()
        button.setTitle("Add to cart", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(named: "main")
        button.layer.cornerRadius = 10
        return button
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    init(product: Product){
        self.product = product
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI Setup

    private func setupUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(imageView)
        view.addSubview(productNameLabel)
        view.addSubview(priceLabel)
        view.addSubview(addButton)
        
        imageView.image = UIImage(named: product.image)
        productNameLabel.text = product.name
        priceLabel.text = product.price
        
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(20)
            make.leading.trailing.equalToSuperview().inset(10)
            make.height.equalToSuperview().multipliedBy(0.5)
        }
        
        productNameLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).inset(10)
            make.leading.trailing.equalToSuperview().inset(20)
            make.centerX.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.2)
        }
        
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(productNameLabel.snp.bottom)
            make.bottom.equalToSuperview().inset(40)
            make.height.equalToSuperview().multipliedBy(0.07)
            make.leading.equalToSuperview().inset(20)
            make.trailing.equalTo(addButton.snp.leading)
        }

        addButton.snp.makeConstraints { make in
            make.top.equalTo(productNameLabel.snp.bottom)
            make.bottom.equalToSuperview().inset(40)
            make.height.equalToSuperview().multipliedBy(0.07)
            make.leading.equalTo(priceLabel.snp.trailing).offset(40)
            make.trailing.equalToSuperview().inset(20)
            make.width.equalTo(160)

        }
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(didTapClose))
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(didTapAction))
        addButton.addTarget(self, action: #selector(AddToCart), for: .touchUpInside)
    }
    
    // MARK: - Selectors
    
    @objc private func didTapClose() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc private func didTapAction() {
    }
    
    @objc private func AddToCart() {
        
    }
}
