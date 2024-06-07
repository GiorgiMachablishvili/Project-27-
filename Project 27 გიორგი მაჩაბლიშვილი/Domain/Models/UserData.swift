//
//  UserData.swift
//  Project 27 გიორგი მაჩაბლიშვილი
//
//  Created by Gio's Mac on 07.06.24.
//

import UIKit

struct UserData {
    let xButton: UIImage
    let avatarImage: UIImage
    let title: String
    let userTypeImage: UIImage
    let userStatus: String
    let online: String
    let profileAvatar: UIImage
    let profile: String
    let scheduleAvatar: UIImage
    let schedule: String
    let statisticsAvatar: UIImage
    let statistics: String
    let discoverCombatAvatar: UIImage
    let discoverCombat: String
    let chatAvatar: UIImage
    let chat: String
    let changeLanguageAvatar: UIImage
    let changeLanguage:String
    let changeAppSkinAvatar: UIImage
    let changeAppSkin: String
    let logoutButton: UIImage
    
    public init(
        xButton: UIImage,
        avatarImage: UIImage,
        title: String,
        userTypeImage: UIImage,
        userStatus: String,
        online: String,
        profileAvatar: UIImage,
        profile: String,
        scheduleAvatar: UIImage,
        schedule: String,
        statisticsAvatar: UIImage,
        statistics: String,
        discoverCombatAvatar: UIImage,
        discoverCombat: String,
        chatAvatar: UIImage,
        chat: String,
        changeLanguageAvatar: UIImage,
        changeLanguage: String,
        changeAppSkinAvatar: UIImage,
        changeAppSkin: String,
        logoutButton: UIImage)
    {
        self.xButton = xButton
        self.avatarImage = avatarImage
        self.title = title
        self.userTypeImage = userTypeImage
        self.userStatus = userStatus
        self.online = online
        self.profileAvatar = profileAvatar
        self.profile = profile
        self.scheduleAvatar = scheduleAvatar
        self.schedule = schedule
        self.statisticsAvatar = statisticsAvatar
        self.statistics = statistics
        self.discoverCombatAvatar = discoverCombatAvatar
        self.discoverCombat = discoverCombat
        self.chatAvatar = chatAvatar
        self.chat = chat
        self.changeLanguageAvatar = changeLanguageAvatar
        self.changeLanguage = changeLanguage
        self.changeAppSkinAvatar = changeAppSkinAvatar
        self.changeAppSkin = changeAppSkin
        self.logoutButton = logoutButton
    }
}
