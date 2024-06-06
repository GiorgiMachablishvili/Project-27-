//
//  HomeScreenData.swift
//  Project 27 გიორგი მაჩაბლიშვილი
//
//  Created by Gio's Mac on 06.06.24.
//

import UIKit

struct HomeScreenData {
    let title: String
    let infoLabel: String
//    let cloudImage: UIImage
//    let pointImage: UIImage
    let mianImage: UIImage
    let button: UIImage
    
    public init(title: String, 
                infoLabel: String,
                mianImage: UIImage,
                button: UIImage) {
        self.title = title
        self.infoLabel = infoLabel
        self.mianImage = mianImage
        self.button = button
    }
}
