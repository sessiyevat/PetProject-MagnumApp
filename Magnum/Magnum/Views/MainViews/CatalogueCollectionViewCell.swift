//
//  CatalogueCollectionViewCell.swift
//  Magnum
//
//  Created by Tommy on 3/9/23.
//

import UIKit

class CatalogueCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CatalogueCollectionViewCell"
    
    // MARK: - UI Components
    lazy private var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    lazy private var categoryLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
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
        addSubview(imageView)
        addSubview(categoryLabel)
        
        categoryLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).inset(5)
//            make.leading.trailing.equalToSuperview()
            make.left.equalTo(40)
            make.bottom.equalTo(imageView.snp.top)
            make.centerY.equalToSuperview()
            make.width.equalTo(100)
            make.height.equalToSuperview().multipliedBy(0.35)
        }
        
        imageView.snp.makeConstraints { make in
            make.top.equalTo(categoryLabel.snp.bottom)
            make.bottom.equalTo(contentView.snp.bottom).inset(5)
            make.leading.trailing.equalToSuperview().inset(10)
            make.height.equalToSuperview().multipliedBy(0.55)
        }
    }
    
    func configure(categoryName: String, imageName: String){
        imageView.image = UIImage(named: imageName)
        categoryLabel.text = categoryName
    }
}
