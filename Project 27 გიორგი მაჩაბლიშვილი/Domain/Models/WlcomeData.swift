//
//  WlcomeData.swift
//  Project 27 გიორგი მაჩაბლიშვილი
//
//  Created by Gio's Mac on 06.06.24.
//

import UIKit

struct WelcomeData {
    let gameTimeImageView: UIImage
    let title: String
    let slogan: String
    let bottomImageView: UIImage
    let buttonTitle: UIImage
    
    public init(gameTimeImageView: UIImage,
                title: String,
                slogan: String,
                bottomImageView: UIImage,
                buttonTitle: UIImage) {
        self.gameTimeImageView = gameTimeImageView
        self.title = title
        self.slogan = slogan
        self.bottomImageView = bottomImageView
        self.buttonTitle = buttonTitle
    }
}
