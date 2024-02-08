//
//  GameCollectoinView.swift
//  23_01_ Millionaire
//
//  Created by mac on 25.01.2024.
//

import Foundation
import UIKit
class GameCollectoinView: UIView, UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.gameCollectoinViewCellId, for: indexPath) as! GameCollectoinViewCell
        cell.setConfigurationCell(index: indexPath.item )
       return cell
    }
    
    var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.layer.cornerRadius = 10
        collectionView.showsVerticalScrollIndicator = false
        collectionView.bounces = false
        collectionView.isScrollEnabled = false    
        return collectionView
    }()
    enum Constants {
        static let gameCollectoinViewCellId: String = "GameCollectoinViewCellId"
    }
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstreints()
    }
    func setupViews(){
            addSubview(collectionView)
            collectionView.dataSource = self
            collectionView.delegate = self
            collectionView.register(GameCollectoinViewCell.self, forCellWithReuseIdentifier: Constants.gameCollectoinViewCellId)
    }
    func setConstreints(){
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

