//
//  CategoryResultsTableViewCell.swift
//  Magnum
//
//  Created by Tommy on 3/11/23.
//

import UIKit
import SnapKit

class CategoryResultsTableViewCell: UITableViewCell {
    
    static let identifier = "CategoryResultsTableViewCell"
    
    // MARK: - UI Components

    private let label: UILabel = {
       let label = UILabel()
        label.numberOfLines = 0
        label.text = ""
        label.textColor = .label
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    private var categoryImageView: UIImageView = {
       let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.layer.masksToBounds = true
        return image
    }()

    // MARK: - Lifecycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - UI Setup

    private func setupUI() {
        contentView.addSubview(label)
        contentView.addSubview(categoryImageView)
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
        
        categoryImageView.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview().inset(15)
            make.trailing.equalTo(label.snp.leading)
            make.height.equalToSuperview().multipliedBy(0.5)
            make.width.equalTo(60)
        }
        
        label.snp.makeConstraints { make in
            make.leading.equalTo(categoryImageView.snp.trailing)
            make.top.bottom.equalToSuperview()
        }
    }
    
    func configure(name: String, imageName: String) {
        label.text = name
        categoryImageView.image = UIImage(named: imageName)
    }
}

