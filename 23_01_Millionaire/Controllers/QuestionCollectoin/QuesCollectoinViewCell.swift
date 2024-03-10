//
//  QuesCollectoinViewCell.swift
//  23_01_ Millionaire
//
//  Created by mac on 28.01.2024.
//

import Foundation
import UIKit

class QuesCollectoinViewCell: UICollectionViewCell{
    
    private lazy var answerGameView: UIImageView = {
        let stepView = UIImageView(frame: bounds)
        stepView.image = UIImage(named: "answer_button_blue")
        return stepView
    }()
    
    private lazy var answerNumLabel: UILabel = {
        let label = UILabel()
        label.textColor = .timerItemRedColor
       
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "A:"
        return label
    }()
    
    private lazy var answerButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .whiteTitleColor
        button.contentHorizontalAlignment = .center
        button.addTarget(self, action: #selector(tappAswerButton), for: .touchUpInside)
        return button
    }()
    //создал обьект класс QuesViewController() в котором есть метод returnVC()
   // let transitionCV = QuesViewController()
    @objc func tappAswerButton(){
    
        let buttonText = answerButton.titleLabel?.text
        if buttonText == correctAnswer {
            if gameLevel < 14{gameLevel += 1}
            else {gameLevel = 0}
            parrentVC.navigationController?.popViewController(animated: true)
            print("tappAswerButton\(String(describing: buttonText))")
        }
        else{
            parrentVC.navigationController?.popViewController(animated: true)
            print("tappAswerButton\(String(describing: buttonText))")
        }
    }
    // 2 шаг внутри ячейки collectionView создаем
    var parrentVC: QuesViewController!
    //MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstraints()
    }

    func setupViews(){
        widthAnchor.constraint(equalToConstant: 311).isActive = true
        heightAnchor.constraint(equalToConstant: 56).isActive = true
        addSubview(answerGameView)
        answerGameView.addSubview(answerNumLabel)
        contentView.addSubview(answerButton)
    }
    
    func setConstraints(){
        answerGameView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            answerGameView.topAnchor.constraint(equalTo: topAnchor),
            answerGameView.leadingAnchor.constraint(equalTo: leadingAnchor),
            answerGameView.trailingAnchor.constraint(equalTo: trailingAnchor),
            answerGameView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        answerNumLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            answerNumLabel.centerYAnchor.constraint(equalTo: answerGameView.centerYAnchor),
            answerNumLabel.leadingAnchor.constraint(equalTo: answerGameView.leadingAnchor,constant: 25),
        ])
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            answerButton.centerYAnchor.constraint(equalTo: answerGameView.centerYAnchor),
            answerButton.leadingAnchor.constraint(equalTo: answerGameView.leadingAnchor,constant: 0),
           
            answerButton.trailingAnchor.constraint(equalTo: answerGameView.trailingAnchor),
            answerButton.bottomAnchor.constraint(equalTo: answerGameView.bottomAnchor),
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    
    func setConfigurationAnswerCell(index: Int) {
        answerNumLabel.text = QuesCollectionCellViewModel[index].answerNumber
        answerButton.setTitle(QuesCollectionCellViewModel[index].answerText, for: .normal)
    }
    
}
