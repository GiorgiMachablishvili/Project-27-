//
//  Constraint.swift
//  Project 27 გიორგი მაჩაბლიშვილი
//
//  Created by Gio's Mac on 06.06.24.
//

import UIKit

class Constraint {
    static let deviceHeight = UIScreen.main.bounds.height
    static let deviceWidth = UIScreen.main.bounds.width
    
    //MARK: figma file device width 375
    static var xCoeff: CGFloat {
        return deviceWidth / 375
    }
    
    //MARK: figma file device height 812
    static var yCoeff: CGFloat {
        return deviceHeight / 812
    }
}
