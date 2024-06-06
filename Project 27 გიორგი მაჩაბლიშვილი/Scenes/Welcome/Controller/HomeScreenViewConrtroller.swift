//
//  HomeScreenViewConrtroller.swift
//  Project 27 გიორგი მაჩაბლიშვილი
//
//  Created by Gio's Mac on 06.06.24.
//

import UIKit
import SnapKit

class HomeScreenViewConrtroller: UIViewController {
    
    private lazy var topImage: UIImageView = {
        let topImage = UIImageView(frame: .zero)
        topImage.contentMode = .scaleAspectFill
        return topImage
    }()
    
    private lazy var goButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.backgroundColor = UIColor(hexString: "FFFFFF")
//        button.setTitle("Stone Stellar", for: .normal)
        button.titleLabel?.font = UIFont.poppinsRegular(size: 15)
        button.tintColor = UIColor(hexString: "030303")
        return button
    }()
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 10
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = UIColor(hexString: "FFFFFF")
        return collectionView
    }()
    
    let cellInfo: [HomeScreenData] = [
        HomeScreenData.init(
            title: "Schedule",
            infoLabel: "Easily schedule event/games then find like minded players for battle. You up for it?",
            mianImage: UIImage(named: "woman&clock")!,
            button: UIImage(named: "Forward Arrow")!),
        HomeScreenData.init(
            title: "Statistics",
            infoLabel: "All data from previous and upcoming games can be found here ",
            mianImage: UIImage(named: "girl and boy")!,
            button: UIImage(named: "Forward Arrow")!),
        HomeScreenData.init(
            title: "Discover  Combats",
            infoLabel: "Find out what’s new and compete among players with new challenges and earn cash with game points ",
            mianImage: UIImage(named: "telescop")!,
            button: UIImage(named: "Forward Arrow")!),
        HomeScreenData.init(
            title: "Message Players",
            infoLabel: "Found the profile of a player that interests you? Start a conversation ",
            mianImage: UIImage(named: "girl and boy")!,
            button: UIImage(named: "Forward Arrow")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        
        setup()
        setupConstraints()
        
        
    }
    
    func setup() {
        view.addSubview(topImage)
        view.addSubview(goButton)
    }
    
    func setupConstraints() {
        topImage.snp.remakeConstraints { make in
            make.top.equalTo(view.snp.top).offset(53.1 * Constraint.yCoeff)
            make.leading.equalTo(view.snp.leading).offset(263 * Constraint.xCoeff)
            make.height.equalTo(22.36 * Constraint.yCoeff)
            make.width.equalTo(24 * Constraint.xCoeff)
        }
        
        goButton.snp.remakeConstraints { make in
            make.top.equalTo(view.snp.top).offset(62 * Constraint.yCoeff)
            make.leading.equalTo(topImage.snp.trailing).offset(2 * Constraint.xCoeff)
            make.height.equalTo(15 * Constraint.yCoeff)
            make.width.equalTo(59 * Constraint.xCoeff)
        }
    }
}

extension HomeScreenViewConrtroller: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellInfo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeScreenCell.identifier, for: indexPath) as? HomeScreenCell else {
            return UICollectionViewCell()
        }
        let info = cellInfo[indexPath.item]
        cell.configuration(with: info)
        return cell
    } 
}
