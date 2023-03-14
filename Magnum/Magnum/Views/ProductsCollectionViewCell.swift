//
//  ProductsCollectionViewCell.swift
//  Magnum
//
//  Created by Tommy on 3/11/23.
//

import UIKit
import SnapKit

class ProductsCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "ProductsCollectionViewCell"
    
    // MARK: - UI Components
    
    private var productImageView: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "dairy1")
        image.contentMode = .scaleAspectFit
        image.layer.masksToBounds = true
        return image
    }()
    
    private let productNameLabel: UILabel = {
       let label = UILabel()
        label.text = "МОЛОКО «ADAL» ПРОДУКТЫ НАШИХ ФЕРМ 3,2% 925 МЛ"
//        label.text = "AAAAAAAAAAA"
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
//        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14, weight: .regular)
        return label
    }()
    
    private let priceLabel: UILabel = {
       let label = UILabel()
        label.text = "289 tg"
        label.textColor = UIColor(named: "main")
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true
        contentView.layer.borderColor = UIColor(named: "line")?.cgColor
        contentView.layer.borderWidth = 1
        
        contentView.addSubview(productImageView)
        contentView.addSubview(productNameLabel)
        contentView.addSubview(priceLabel)
        
        productImageView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview().inset(10)
            make.bottom.equalTo(productNameLabel.snp.top).inset(10)
            make.height.equalToSuperview().multipliedBy(0.6)
        }
        productNameLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(productImageView.snp.bottom)
            make.centerY.equalToSuperview()
            make.bottom.equalTo(priceLabel.snp.top)
            make.height.equalToSuperview().multipliedBy(0.25)


        }
        priceLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.centerY.equalToSuperview()
            make.bottom.equalToSuperview().offset(10)
            make.height.equalToSuperview().multipliedBy(0.15)
        }
    }
    
    func configure(with product: Product){
        productImageView.image = UIImage(named: product.image)
        productNameLabel.text = product.name
        priceLabel.text = product.price
    }
}
