//
//  UserViewController.swift
//  Project 27 გიორგი მაჩაბლიშვილი
//
//  Created by Gio's Mac on 07.06.24.
//

import UIKit

class UserViewController: UIViewController {

    let data = UserData(
        xButton: UIImage(named: "Close Icon")!,
        avatarImage: UIImage(named: "avatar")!,
        title: "Stone Stellar",
        userTypeImage: UIImage(named: "crown")!,
        userStatus: "Gold Player",
        online: "Online",
        profileAvatar: UIImage(named: "Profile Icon")!,
        profile: "My Profile",
        scheduleAvatar: UIImage(named: "Schedule Icon")!,
        schedule: "Schedule",
        statisticsAvatar: UIImage(named: "Statistics Icon")!,
        statistics: "Statistics",
        discoverCombatAvatar: UIImage(named: "Location_Pin")!,
        discoverCombat: "Discover Combat",
        chatAvatar: UIImage(named: "Chat")!,
        chat: "Chat",
        changeLanguageAvatar: UIImage(named: "Change Language Icon")!,
        changeLanguage: "Change Language",
        changeAppSkinAvatar: UIImage(named: "Change Skin")!,
        changeAppSkin: "Change App Skin",
        logoutButton: UIImage(named: "Logout")!)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userView = UserView()
        userView.configuration(with: data)
        userView.didTapButton = {
            self.navigationController?.popViewController(animated: true)
        }
        self.view = userView

    }
}
