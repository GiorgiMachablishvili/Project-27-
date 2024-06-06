//
//  ViewController.swift
//  Project 27 გიორგი მაჩაბლიშვილი
//
//  Created by Gio's Mac on 06.06.24.
//

import UIKit

class ViewController: UIViewController {
    let data = WelcomeData.init(
        gameTimeImageView: UIImage(named: "gameIcon")!,
        title: "GAAMETIIME",
        slogan: "CONNECT WITH YOUR REALITY",
        bottomImageView: UIImage(named: "spleshScreenBottom")!,
        buttonTitle: UIImage(named: "gameIcon")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let welcomeView = WelcomeView()
        welcomeView.configuration(with: data)
        welcomeView.didTapButton = {
            let homeVC = HomeScreenViewConrtroller()
            self.navigationController?.pushViewController(homeVC, animated: true)
        }
        self.view = welcomeView
    }
}

