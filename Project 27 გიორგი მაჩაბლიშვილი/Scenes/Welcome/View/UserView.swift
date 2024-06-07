//
//  UserView.swift
//  Project 27 გიორგი მაჩაბლიშვილი
//
//  Created by Gio's Mac on 07.06.24.
//

import UIKit
import SnapKit

class UserView: UIView {
    
    var didTapButton: (() -> Void)?
    
    private lazy var xButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = UIColor(hexString: "FFFFFF")
        button.tintColor = UIColor(hexString: "FA5075")
        return button
    }()
    
    private lazy var avatarImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor(hexString: "FA5075")
        label.font = UIFont.poppinsSemiBold(size: 16)
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var userTypeImage: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        return imageView
    }()
    
    private lazy var userStatusLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor(hexString: "#F4C73E")
        label.font = UIFont.poppinsRegular(size: 10)
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var onlineLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor(hexString: "36C703")
        label.font = UIFont.poppinsRegular(size: 10)
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
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
    
    private lazy var scheduleImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        return imageView
    }()
    
    private lazy var scheduleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor(hexString: "030303")
        label.font = UIFont.poppinsRegular(size: 16)
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var statisticsImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        return imageView
    }()
    
    private lazy var statisticsLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor(hexString: "030303")
        label.font = UIFont.poppinsRegular(size: 16)
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var discoverCombatImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        return imageView
    }()
    
    private lazy var discoverCombatLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor(hexString: "030303")
        label.font = UIFont.poppinsRegular(size: 16)
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var chatImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        return imageView
    }()
    
    private lazy var chatLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor(hexString: "030303")
        label.font = UIFont.poppinsRegular(size: 16)
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var changeLanguageImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        return imageView
    }()
    
    private lazy var changeLanguageLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor(hexString: "030303")
        label.font = UIFont.poppinsRegular(size: 16)
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var changeAppSkinImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        return imageView
    }()
    
    private lazy var changeAppSkinLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = UIColor(hexString: "030303")
        label.font = UIFont.poppinsRegular(size: 16)
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var logoutButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = UIColor(hexString: "FFFFFF")
        button.tintColor = UIColor(hexString: "FA5075")
        button.addTarget(self, action: #selector(goBackButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        backgroundColor = UIColor(hexString: "FFFFFF")
        setup()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        addSubview(xButton)
        addSubview(avatarImageView)
        addSubview(titleLabel)
        addSubview(userTypeImage)
        addSubview(userStatusLabel)
        addSubview(onlineLabel)
        addSubview(profileImageView)
        addSubview(profileLabel)
        addSubview(scheduleImageView)
        addSubview(scheduleLabel)
        addSubview(statisticsImageView)
        addSubview(statisticsLabel)
        addSubview(discoverCombatImageView)
        addSubview(discoverCombatLabel)
        addSubview(chatImageView)
        addSubview(chatLabel)
        addSubview(changeLanguageImageView)
        addSubview(changeLanguageLabel)
        addSubview(changeAppSkinImageView)
        addSubview(changeAppSkinLabel)
        addSubview(logoutButton)
    }
    
    func setupConstraints() {
        
        xButton.snp.makeConstraints { make in
            make.top.equalTo(snp.top).offset(68 * Constraint.yCoeff)
            make.trailing.equalTo(snp.trailing).offset(-44 * Constraint.xCoeff)
            make.height.width.equalTo(26 * Constraint.yCoeff)
        }
        
        avatarImageView.snp.makeConstraints { make in
            make.top.equalTo(snp.top).offset(114 * Constraint.yCoeff)
            make.leading.equalTo(snp.leading).offset(60 * Constraint.xCoeff)
            make.height.width.equalTo(56 * Constraint.yCoeff)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(snp.top).offset(115 * Constraint.yCoeff)
            make.leading.equalTo(avatarImageView.snp.trailing).offset(11 * Constraint.xCoeff)
            make.height.equalTo(24 * Constraint.yCoeff)
        }
        
        userTypeImage.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(2 * Constraint.yCoeff)
            make.leading.equalTo(avatarImageView.snp.trailing).offset(11 * Constraint.xCoeff)
            make.height.width.equalTo(10 * Constraint.yCoeff)
        }
        
        userStatusLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom)
            make.leading.equalTo(userTypeImage.snp.trailing).offset(3 * Constraint.xCoeff)
            make.height.equalTo(15 * Constraint.yCoeff)
        }
        
        onlineLabel.snp.makeConstraints { make in
            make.top.equalTo(userStatusLabel.snp.bottom).offset(2 * Constraint.yCoeff)
            make.leading.equalTo(avatarImageView.snp.trailing).offset(11 * Constraint.xCoeff)
            make.height.equalTo(15 * Constraint.yCoeff)
        }
        
        profileImageView.snp.makeConstraints { make in
            make.top.equalTo(avatarImageView.snp.bottom).offset(57 * Constraint.yCoeff)
            make.leading.equalTo(snp.leading).offset(60 * Constraint.xCoeff)
            make.height.width.equalTo(15 * Constraint.yCoeff)
        }
        
        profileLabel.snp.makeConstraints { make in
            make.top.equalTo(avatarImageView.snp.bottom).offset(53 * Constraint.yCoeff)
            make.leading.equalTo(profileImageView.snp.trailing).offset(24 * Constraint.xCoeff)
            make.height.equalTo(24 * Constraint.yCoeff)
        }
        
        scheduleImageView.snp.makeConstraints { make in
            make.top.equalTo(profileImageView.snp.bottom).offset(42 * Constraint.yCoeff)
            make.leading.equalTo(snp.leading).offset(60)
            make.height.width.equalTo(15 * Constraint.yCoeff)
        }
        
        scheduleLabel.snp.makeConstraints { make in
            make.top.equalTo(profileLabel.snp.bottom).offset(34 * Constraint.yCoeff)
            make.leading.equalTo(profileLabel.snp.leading)
            make.height.equalTo(24 * Constraint.yCoeff)
        }
        
        statisticsImageView.snp.makeConstraints { make in
            make.top.equalTo(scheduleImageView.snp.bottom).offset(42 * Constraint.yCoeff)
            make.leading.equalTo(snp.leading).offset(60 * Constraint.xCoeff)
            make.height.width.equalTo(15 * Constraint.yCoeff)
        }
        
        statisticsLabel.snp.makeConstraints { make in
            make.top.equalTo(scheduleLabel.snp.bottom).offset(34 * Constraint.yCoeff)
            make.leading.equalTo(profileLabel.snp.leading)
            make.height.equalTo(24 * Constraint.yCoeff)
        }
        
        discoverCombatImageView.snp.makeConstraints { make in
            make.top.equalTo(statisticsImageView.snp.bottom).offset(42 * Constraint.yCoeff)
            make.leading.equalTo(snp.leading).offset(60 * Constraint.xCoeff)
            make.height.width.equalTo(15 * Constraint.yCoeff)
        }
        
        discoverCombatLabel.snp.makeConstraints { make in
            make.top.equalTo(statisticsLabel.snp.bottom).offset(34 * Constraint.yCoeff)
            make.leading.equalTo(profileLabel.snp.leading)
            make.height.equalTo(24 * Constraint.yCoeff)
        }
        
        chatImageView.snp.makeConstraints { make in
            make.top.equalTo(discoverCombatImageView.snp.bottom).offset(42 * Constraint.yCoeff)
            make.leading.equalTo(snp.leading).offset(60 * Constraint.xCoeff)
            make.height.width.equalTo(15 * Constraint.yCoeff)
        }
        
        chatLabel.snp.makeConstraints { make in
            make.top.equalTo(discoverCombatLabel.snp.bottom).offset(34 * Constraint.yCoeff)
            make.leading.equalTo(profileLabel.snp.leading)
            make.height.equalTo(24 * Constraint.yCoeff)
        }
        
        changeLanguageImageView.snp.makeConstraints { make in
            make.top.equalTo(chatImageView.snp.bottom).offset(42 * Constraint.yCoeff)
            make.leading.equalTo(snp.leading).offset(60 * Constraint.xCoeff)
            make.height.width.equalTo(15 * Constraint.yCoeff)
        }
        
        changeLanguageLabel.snp.makeConstraints { make in
            make.top.equalTo(chatLabel.snp.bottom).offset(34 * Constraint.yCoeff)
            make.leading.equalTo(profileLabel.snp.leading)
            make.height.equalTo(24 * Constraint.yCoeff)
        }
        
        changeAppSkinImageView.snp.makeConstraints { make in
            make.top.equalTo(changeLanguageImageView.snp.bottom).offset(42 * Constraint.yCoeff)
            make.leading.equalTo(snp.leading).offset(60 * Constraint.xCoeff)
            make.height.width.equalTo(15 * Constraint.yCoeff)
        }
        
        changeAppSkinLabel.snp.makeConstraints { make in
            make.top.equalTo(changeLanguageLabel.snp.bottom).offset(34 * Constraint.yCoeff)
            make.leading.equalTo(profileLabel.snp.leading)
            make.height.equalTo(24 * Constraint.yCoeff)
        }
        
        logoutButton.snp.makeConstraints { make in
            make.centerX.equalTo(snp.centerX)
            make.bottom.equalTo(snp.bottom).offset(-88 * Constraint.yCoeff)
            make.width.equalTo(89 * Constraint.xCoeff)
            make.height.equalTo(24 * Constraint.yCoeff)
        }
        
    }
    
    @objc func goBackButton() {
        didTapButton!()
    }
    
    func configuration(with data: UserData) {
        xButton.setImage(data.xButton, for: .normal)
        avatarImageView.image = data.avatarImage
        titleLabel.text = data.title
        userTypeImage.image = data.userTypeImage
        userStatusLabel.text = data.userStatus
        onlineLabel.text = data.online
        profileImageView.image = data.profileAvatar
        profileLabel.text = data.profile
        scheduleImageView.image = data.scheduleAvatar
        scheduleLabel.text = data.schedule
        statisticsImageView.image = data.statisticsAvatar
        statisticsLabel.text = data.statistics
        discoverCombatImageView.image = data.discoverCombatAvatar
        discoverCombatLabel.text = data.discoverCombat
        chatImageView.image = data.chatAvatar
        chatLabel.text = data.chat
        changeLanguageImageView.image = data.changeLanguageAvatar
        changeLanguageLabel.text = data.changeLanguage
        changeAppSkinImageView.image = data.changeLanguageAvatar
        changeAppSkinLabel.text = data.changeAppSkin
        logoutButton.setImage(data.logoutButton, for: .normal)
    }
}
