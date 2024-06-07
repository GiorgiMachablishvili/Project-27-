//
//  UserCell.swift
//  Project 27 გიორგი მაჩაბლიშვილი
//
//  Created by Gio's Mac on 07.06.24.
//

import UIKit
import SnapKit

class UserCell: UITableViewCell {
    
    static let identifier = "UserCell"
    
    private lazy var profileImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.tintColor = UIColor(hexString: "FF6480")
        return imageView
    }()
    
    private lazy var profileLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor(hexString: "030303")
        label.font = UIFont.poppinsRegular(size: 16)
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        addSubview(profileImageView)
        addSubview(profileLabel)
    }
    
    func setupConstraints() {
        profileImageView.snp.makeConstraints { make in
            make.centerY.equalTo(snp.centerY)
            make.leading.equalTo(snp.leading).offset(60 * Constraint.xCoeff)
            make.height.width.equalTo(15 * Constraint.yCoeff)
        }
        
        profileLabel.snp.makeConstraints { make in
            make.centerY.equalTo(snp.centerY)
            make.leading.equalTo(profileImageView.snp.trailing).offset(24 * Constraint.xCoeff)
            make.height.equalTo(24 * Constraint.yCoeff)
        }
    }
    
    func configure(with menuItem: MenuItem) {
        profileImageView.image = menuItem.icon
        profileLabel.text = menuItem.title

    }
}
