//
//  WelcomeView.swift
//  Project 27 გიორგი მაჩაბლიშვილი
//
//  Created by Gio's Mac on 06.06.24.
//

import UIKit
import SnapKit

class WelcomeView: UIView {
    
    var didTapButton: (() -> Void)?
    
    private lazy var gameTimeButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = UIColor(hexString: "FF6480")
        button.tintColor = UIColor(hexString: "030303")
        button.addTarget(self, action: #selector(selectButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor(hexString: "FFFFFF")
        label.numberOfLines = 1
        label.font = .poppinsBold(size: 25)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var sloganLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor(hexString: "FFFFFF")
        label.numberOfLines = 1
        label.font = .poppinsMedium(size: 10)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var bottomImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(hexString: "FF6480")
        setup()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        addSubview(gameTimeButton)
        addSubview(titleLabel)
        addSubview(sloganLabel)
        addSubview(bottomImageView)
    }
    
    func setupConstraints() {
        gameTimeButton.snp.remakeConstraints { make in
            make.centerX.equalTo(snp.centerX)
            make.top.equalTo(snp.top).offset(274 * Constraint.yCoeff)
            make.height.equalTo(52.28 * Constraint.yCoeff)
            make.width.equalTo(57 * Constraint.xCoeff)
        }
        
        titleLabel.snp.remakeConstraints { make in
            make.centerX.equalTo(snp.centerX)
            make.top.equalTo(gameTimeButton.snp.bottom).offset(15.53 * Constraint.yCoeff)
            make.height.equalTo(17.78 * Constraint.xCoeff)
        }
        
        sloganLabel.snp.remakeConstraints { make in
            make.centerX.equalTo(snp.centerX)
            make.top.equalTo(titleLabel.snp.bottom).offset(8.83 * Constraint.yCoeff)
        }
        
        bottomImageView.snp.remakeConstraints { make in
            make.top.equalTo(snp.top).offset(642 * Constraint.yCoeff)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
    func configuration(with data: WelcomeData) {
        gameTimeButton.setImage(data.buttonTitle, for: .normal)
        titleLabel.text = data.title
        sloganLabel.text = data.slogan
        bottomImageView.image = data.bottomImageView
    }
    
    @objc func selectButton() {
        didTapButton!()
    }
}
