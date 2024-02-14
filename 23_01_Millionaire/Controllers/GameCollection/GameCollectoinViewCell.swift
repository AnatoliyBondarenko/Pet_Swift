//
//  GameCollectoinView.swift
//  23_01_ Millionaire
//
//  Created by mac on 25.01.2024.
//

import Foundation
import UIKit


class GameCollectoinViewCell: UICollectionViewCell {
    
    
    private lazy var stepGameView: UIImageView = {
        let stepView = UIImageView(frame: bounds)
        stepView.image = UIImage(named: "levels_yellow_button")
        return stepView
    }()
    
    private lazy var stepGameNomberLabel: UILabel = {
        let label = UILabel()
        label.textColor = .whiteTitleColor
        return label
    }()
    
    private lazy var stepGameValueLabel: UILabel = {
        let label = UILabel()
        label.textColor = .whiteTitleColor
        return label
    }()
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
       // widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        widthAnchor.constraint(equalToConstant: 311).isActive = true
        heightAnchor.constraint(equalToConstant: 36).isActive = true
        addSubview(stepGameView)
        stepGameView.addSubview(stepGameNomberLabel)
        stepGameView.addSubview(stepGameValueLabel)
        
    }
    
    func setConstraints(){
        stepGameView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stepGameView.topAnchor.constraint(equalTo: topAnchor),
            stepGameView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stepGameView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stepGameView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        stepGameNomberLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stepGameNomberLabel.topAnchor.constraint(equalTo: stepGameView.topAnchor),
            stepGameNomberLabel.leadingAnchor.constraint(equalTo: stepGameView.leadingAnchor,constant: 30),
           // stepGameNomberLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            stepGameNomberLabel.bottomAnchor.constraint(equalTo: stepGameView.bottomAnchor),
        ])
        stepGameValueLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stepGameValueLabel.topAnchor.constraint(equalTo: stepGameView.topAnchor),
            //stepGameValueLabel.leadingAnchor.constraint(equalTo: stepGameView.trailingAnchor,constant: 130),
            stepGameValueLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            stepGameValueLabel.bottomAnchor.constraint(equalTo: stepGameView.bottomAnchor),
        ])
    }
    func setConfigurationCell(index: Int) {
        if gameLevel == 15 - index {
            stepGameView.image = UIImage(named: "levels_green_button")
//            if gameLevel < 15 {gameLevel += 1}
//            else {gameLevel = 1}
//            print(gameLevel)
        }
        else{
            stepGameView.image = UIImage(named:GameCollectionCellViewModel[index].stepColor)
        }
        stepGameNomberLabel.text = GameCollectionCellViewModel[index].stepNumber
        stepGameValueLabel.text = GameCollectionCellViewModel[index].stepPrice
       
    }
}
