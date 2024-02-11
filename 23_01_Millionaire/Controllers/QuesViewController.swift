//
//  QuesViewController.swift
//  23_01_ Millionaire
//
//  Created by mac on 28.01.2024.
//

import Foundation
import UIKit

class QuesViewController: UIViewController{
    
    //MARK: - Create UI
    
    private lazy var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = .millBackgroundImage
        return image
    }()
    
    private lazy var questionNumber: UILabel = {
       let label = UILabel()
        label.text = "QuesNum: "
        label.textColor = .descriptionTitleColor
        return label
    }()
        
    private lazy var questionPrise: UILabel = {
       let label = UILabel()
        label.textColor = .whiteTitleColor
        label.text = "$500"
        return label
    }()
       
    private lazy var timerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "timer_image_regular")
        return imageView
    }()
    
    private lazy var questionTextLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.textColor = .whiteTitleColor
        textLabel.font = UIFont.systemFont(ofSize: 24)
        textLabel.textAlignment = .center
        textLabel.text = "Question"
        return textLabel
    }()
    let quesCollectoinView = QuesCollectoinView()
   
    private lazy var helpStackView: UIStackView = {
     let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    private lazy var help5050Button: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .whiteTitleColor
        button.setBackgroundImage(UIImage(named: "help_50_50"), for: .normal)
        button.addTarget(self, action: #selector(touchHelp5050Button), for: .touchUpInside)
        return button
    }()
    
    private lazy var helpAudienceButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .whiteTitleColor
        button.setBackgroundImage(UIImage(named: "help_audience"), for: .normal)
        button.addTarget(self, action: #selector(touchHelpAudienceButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var helpCallButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .whiteTitleColor
        button.setBackgroundImage(UIImage(named: "help_call"), for: .normal)
        button.addTarget(self, action: #selector(touchHelpCallButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstreints()
        // 3 шаг    из QuesViewController передаем данные в коллецию
        // (передаем в коллекцию наш родительский VC (самого себя))
        quesCollectoinView.parrentVC = self
    }

    
    @objc func touchHelp5050Button(){
        print("tapHelp5050Button")
    }
    
    @objc func touchHelpAudienceButton(){
        print("touchHelpAudienceButton")
    }
    
    @objc func touchHelpCallButton(){
        print("touchHelpCallButton")
    }
    
    func setupViews(){
        view.addSubview(backgroundImage)
        view.addSubview(questionNumber)
        view.addSubview(questionPrise)
        view.addSubview(timerImageView)
        view.addSubview(questionTextLabel)
        view.addSubview(quesCollectoinView)
        view.addSubview(helpStackView)
        helpStackView.addArrangedSubview(help5050Button)
        helpStackView.addArrangedSubview(helpAudienceButton)
        helpStackView.addArrangedSubview(helpCallButton)
//        helpStackView = UIStackView(arrangedSubviews:[
//            help5050Button,
//            helpAudienceButton,
//            helpCallButton
//        ] )
        
    }

    func setConstreints(){
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        questionNumber.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            questionNumber.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12),
            questionNumber.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            questionNumber.heightAnchor.constraint(equalToConstant: 19)
        ])
        
        questionPrise.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            questionPrise.topAnchor.constraint(equalTo: questionNumber.bottomAnchor, constant: 1),
            questionPrise.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            questionPrise.heightAnchor.constraint(equalToConstant: 21)
        ])
        timerImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            timerImageView.topAnchor.constraint(equalTo: questionPrise.bottomAnchor, constant: 32),
            timerImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            timerImageView.heightAnchor.constraint(equalToConstant: 45)
        ])
        questionTextLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            questionTextLabel.topAnchor.constraint(equalTo: timerImageView.bottomAnchor, constant: 24),
            questionTextLabel.leadingAnchor.constraint(equalTo: quesCollectoinView.leadingAnchor),
            questionTextLabel.trailingAnchor.constraint(equalTo: quesCollectoinView.trailingAnchor),
            questionTextLabel.bottomAnchor.constraint(equalTo: quesCollectoinView.topAnchor, constant: -32)
        ])
        quesCollectoinView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            quesCollectoinView.heightAnchor.constraint(equalToConstant: 272),
            quesCollectoinView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            quesCollectoinView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            quesCollectoinView.bottomAnchor.constraint(equalTo: helpStackView.topAnchor, constant: -40)
        ])
        helpStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            helpStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -64),
            helpStackView.leadingAnchor.constraint(equalTo: quesCollectoinView.leadingAnchor),
            helpStackView.trailingAnchor.constraint(equalTo: quesCollectoinView.trailingAnchor),
            helpStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}

