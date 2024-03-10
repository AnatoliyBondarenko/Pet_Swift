//
//  QuesCollectoinView.swift
//  23_01_ Millionaire
//
//  Created by mac on 28.01.2024.
//

import Foundation
import UIKit
class QuesCollectoinView: UIView, UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.quesCollectoinViewCellId, for: indexPath) as!QuesCollectoinViewCell
        cell.setConfigurationAnswerCell(index: indexPath.item)
       // из коллекции передаем данные в ячейку
       // cell.parrentVC = parrentVC (передаем в коллекцию наш родительский VC)
        cell.parrentVC = parrentVC
        return cell
    }
    // 1 шаг внутри collectionView создаем переменную
    var parrentVC: QuesViewController!
    
    var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 14
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
        static let quesCollectoinViewCellId: String = "QuesCollectoinViewCellId"
    }
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstreints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupViews(){
            addSubview(collectionView)
            collectionView.dataSource = self
            collectionView.delegate = self
        collectionView.register(QuesCollectoinViewCell.self, forCellWithReuseIdentifier: Constants.quesCollectoinViewCellId)
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
    
}
 
