//
//  UserViewController.swift
//  Project 27 გიორგი მაჩაბლიშვილი
//
//  Created by Gio's Mac on 07.06.24.
//

import UIKit
import SnapKit

class UserViewController: UIViewController {
    
//    let userData = UserData()
    
    private lazy var topView: UIView = {
        let view = UIView(frame: .zero)
        return view
    }()
    
    private lazy var xButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = UIColor(hexString: "FFFFFF")
        button.tintColor = UIColor(hexString: "FA5075")
        button.setImage(UIImage(named: "Close Icon"), for: .normal)
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
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.backgroundColor = UIColor(hexString: "FFFFFF")
        tableView.showsVerticalScrollIndicator = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isScrollEnabled = false
        tableView.separatorStyle = .none
        tableView.register(UserCell.self, forCellReuseIdentifier: "UserCell")
        return tableView
    }()
    
    private lazy var logoutButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = UIColor(hexString: "FFFFFF")
        button.tintColor = UIColor(hexString: "FA5075")
        button.setImage(UIImage(named: "Logout"), for: .normal)
        button.addTarget(self, action: #selector(goBackPage), for: .touchUpInside)
        return button
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(hexString: "FFFFFF")
        setup()
        setupConstraints()
        configure(with: userProfile)
    }
    
    func setup() {
        view.addSubview(topView)
        view.addSubview(tableView)
        topView.addSubview(xButton)
        topView.addSubview(avatarImageView)
        topView.addSubview(titleLabel)
        topView.addSubview(userTypeImage)
        topView.addSubview(userStatusLabel)
        topView.addSubview(onlineLabel)
        view.addSubview(logoutButton)
    }
    
    func setupConstraints() {
        topView.snp.remakeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(170 * Constraint.yCoeff)
        }
        
        tableView.snp.remakeConstraints { make in
            make.top.equalTo(avatarImageView.snp.bottom).offset(58 * Constraint.yCoeff)
            make.leading.trailing.equalToSuperview().inset(10 * Constraint.xCoeff)
            make.bottom.equalTo(view.snp.bottom).offset(-(110 * Constraint.yCoeff))
        }
        
        xButton.snp.remakeConstraints { make in
            make.top.equalTo(view.snp.top).offset(68)
            make.trailing.equalTo(view.snp.trailing).offset(-(44 * Constraint.xCoeff))
            make.height.width.equalTo(26 * Constraint.yCoeff)
        }
        
        avatarImageView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(114 * Constraint.yCoeff)
            make.leading.equalTo(view.snp.leading).offset(60 * Constraint.xCoeff)
            make.height.width.equalTo(56 * Constraint.yCoeff)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(115 * Constraint.yCoeff)
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
        
        logoutButton.snp.makeConstraints { make in
            make.bottom.equalTo(view.snp.bottom).offset(-(88 * Constraint.yCoeff))
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(24 * Constraint.yCoeff)
            make.width.equalTo(90 * Constraint.xCoeff)
        }
    }
    
    func configure(with userProfile: UserProfile) {
        avatarImageView.image = userProfile.avatarImage
        titleLabel.text = userProfile.username
        userTypeImage.image = userProfile.playerStatusImage
        userStatusLabel.text = userProfile.playerStatus
        onlineLabel.text = userProfile.onlineStatus
    }
    
    @objc func goBackPage() {
        navigationController?.popViewController(animated: true)
    }
}
