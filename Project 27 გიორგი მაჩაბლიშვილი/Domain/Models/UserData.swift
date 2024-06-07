//
//  UserData.swift
//  Project 27 გიორგი მაჩაბლიშვილი
//
//  Created by Gio's Mac on 07.06.24.
//

import UIKit
struct SettingsData {
    let userProfile: UserProfile
    let menuItems: [MenuItem]
}

 public struct MenuItem {
    let icon: UIImage
    let title: String
}

struct UserProfile {
    let avatarImage: UIImage
    let username: String
    let playerStatusImage: UIImage
    let playerStatus: String // Gold Player
    let onlineStatus: String // Online status
}

let userProfile = UserProfile(
    avatarImage: UIImage(named: "avatar")!,
    username: "Stone Stellar",
    playerStatusImage: UIImage(named: "crown")!,
    playerStatus: "Gold Player",
    onlineStatus: "Online"
)

public let menuItems = [
    MenuItem(icon: UIImage(systemName: "person.circle")!, title: "My Profile"),
    MenuItem(icon: UIImage(systemName: "calendar")!, title: "Schedule"),
    MenuItem(icon: UIImage(systemName: "chart.bar")!, title: "Statistics"),
    MenuItem(icon: UIImage(systemName: "location.circle")!, title: "Discover Combat"),
    MenuItem(icon: UIImage(systemName: "message")!, title: "Chat"),
    MenuItem(icon: UIImage(systemName: "globe")!, title: "Change Language"),
    MenuItem(icon: UIImage(systemName: "paintbrush")!, title: "Change App Skin"),
    MenuItem(icon: UIImage(systemName: "arrow.left.square")!, title: "Logout")
]



