//
//  HomeScreenCell.swift
//  Project 27 გიორგი მაჩაბლიშვილი
//
//  Created by Gio's Mac on 06.06.24.
//

import UIKit
import SnapKit

class HomeScreenCell: UICollectionViewCell {
    
    static let identifier = "HomeScreenCell"
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor(hexString: "FFFFFF")
        label.font = UIFont.poppinsSemiBold(size: 12)
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var informationLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor(hexString: "FFFFFF")
        label.font = UIFont.poppinsRegular(size: 10)
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        return imageView
    }()
    
    private lazy var backButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = UIColor(hexString: "FF6480")
        button.tintColor = UIColor(hexString: "FFFFFF")
        return button
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setup()
        setupConstraint()
        
        layer.cornerRadius = 10
        backgroundColor = UIColor(hexString: "FF6480")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(informationLabel)
        contentView.addSubview(imageView)
        contentView.addSubview(backButton)
    }
    
    func setupConstraint() {
        titleLabel.snp.remakeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(30 * Constraint.yCoeff)
            make.leading.equalTo(contentView.snp.leading).offset(24 * Constraint.xCoeff)
            make.height.equalTo(18 * Constraint.yCoeff)
        }
        
        informationLabel.snp.remakeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(10 * Constraint.yCoeff)
            make.leading.equalTo(contentView.snp.leading).offset(24 * Constraint.xCoeff)
            make.height.equalTo(45 * Constraint.yCoeff)
            make.width.equalTo(165 * Constraint.xCoeff)
        }
        
        imageView.snp.remakeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(43 * Constraint.yCoeff)
            make.leading.equalTo(contentView.snp.leading).offset(181 * Constraint.xCoeff)
            make.height.equalTo(107 * Constraint.yCoeff)
            make.width.equalTo(112 * Constraint.xCoeff)
        }
        
        backButton.snp.remakeConstraints { make in
            make.bottom.equalTo(contentView.snp.bottom).offset(-(23.67 * Constraint.yCoeff))
            make.leading.equalTo(contentView.snp.leading).offset(24 * Constraint.xCoeff)
            make.height.equalTo(9.33 * Constraint.yCoeff)
            make.width.equalTo(14 * Constraint.xCoeff)
        }
    }
    
    func configuration(with data: HomeScreenData) {
        titleLabel.text = data.title
        informationLabel.text = data.infoLabel
        imageView.image = data.mianImage
        backButton.setImage(UIImage(named: "Forward Arrow"), for: .normal)
    }
}

