//
//  ViewController.swift
//  23_01_ Millionaire
//
//  Created by mac on 23.01.2024.
//
import Foundation
import UIKit

class FirstViewController: UIViewController {
    enum Constants {
        static let backgroundImage: String = "background_image"
        static let rulesButtonImage: String = "rules_image"
        static let logoImage: String = "logo_image"
        static let gameNameText: String = "Who Wants \nto be a Millionare"
        static let scoreText: String = "All-time Best Score"
        static let coinImage: String = "coin_image"
        static let selfBestScore: String = "$0"
        static let newGameButtonImage: String = "title_yellow_button"
        static let teamButtonText: String = "© TEAM 10"
        static let newGameButtonText: String = "New game"
        static let logoImageViewSize: CGFloat = 195.0
        static let logoImageTopSpacing: CGFloat = 150.0
        static let rulesButtonTopSpacing: CGFloat = 59.0
        static let rulesButtonTrailingSpacing: CGFloat = 23.0
        static let rulesButtonSize: CGFloat = 32.0
        static let generalInfoTopSpacing: CGFloat = 16.0
        static let generalInfoSideSpacing: CGFloat = 32
        static let scoreTopSpacing: CGFloat = 8
        static let newGameButtonBottomSpacing: CGFloat = 20
        static let teamButtonBottomSpacing: CGFloat = 30
        static let newGameButtonSideSpacing: CGFloat = 32
    }
    
    //MARK: - Create UI
    
    
    private lazy var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = .millBackgroundImage
        return image
    }()

    private lazy var rulesButton: UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(.millHelpImage, for: .normal)
        //button.setBackgroundImage(UIImage(named: Constants.rulesButtonImage), for: .normal)
        button.addTarget(self, action: #selector(rulesButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: Constants.logoImage)
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true

        return imageView
    }()
    
    private lazy var gameNameLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.gameNameText
        label.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        label.textColor = .whiteTitleColor
        label.numberOfLines = 6
        label.textAlignment = .center
        return label
    }()
    
    private lazy var bestScoreLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.scoreText
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .descriptionTitleColor
        label.textAlignment = .center
        return label
    }()
    
    
    
    private lazy var coinImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 32).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 32).isActive = true
        imageView.image = UIImage(named: Constants.coinImage)
        //imageView.backgroundColor = .white
        return imageView
    }()
    
    private lazy var selfBestScoreLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.selfBestScore
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .whiteTitleColor
        //label.backgroundColor = .purple
        //label.textAlignment = .center
//
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.heightAnchor.constraint(equalToConstant: 32).isActive = true
//        label.widthAnchor.constraint(equalToConstant: 40).isActive = true
        return label
    }()
 
    private lazy var continueGameButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .whiteTitleColor
        button.setTitle("Continue Game", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        button.setBackgroundImage(UIImage(named: "title_dark_blue_button"), for: .normal)
        button.addTarget(self, action: #selector(newGameButtonTapped), for: .touchUpInside)
       // button.alpha = 0
        return button
    }()
    
    
    private lazy var newGameButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .whiteTitleColor
        button.setTitle(Constants.newGameButtonText, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        button.setBackgroundImage(UIImage(named: Constants.newGameButtonImage), for: .normal)
        button.addTarget(self, action: #selector(newGameButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    
    private lazy var teamButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(Constants.teamButtonText, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.tintColor = .whiteTitleColor
        button.addTarget(self, action: #selector(teamButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var generalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 5
        stackView.distribution = .equalCentering
        return stackView
    }()
    
    private lazy var bottomStackView: UIStackView = {
        let stack = UIStackView()
        
        return stack
    }()
    
    //MARK: - Button function
    
    @objc private func newGameButtonTapped() {
        let mainGameVC = MainGameViewController()
        self.navigationController?.pushViewController(mainGameVC, animated: true)
    }

    @objc private func rulesButtonTapped() {
        let rulesVC = RulesViewController()
        
        self.present(rulesVC, animated: true, completion: nil)
    }
    
    @objc private func teamButtonTapped() {
        let teamVC = TeamViewController()
        self.present(teamVC, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstreints()
    }
   private func setupViews(){
       view.addSubview(backgroundImage)
       view.addSubview(rulesButton)
       
       generalStackView = UIStackView(arrangedSubviews: [logoImageView,gameNameLabel,bestScoreLabel])
       generalStackView.axis = .vertical
       generalStackView.spacing = 5
       generalStackView.distribution = .equalSpacing
       view.addSubview(generalStackView)
       view.addSubview(coinImageView)
       view.addSubview(selfBestScoreLabel)
       bottomStackView = UIStackView(arrangedSubviews: [continueGameButton,newGameButton,teamButton])
       bottomStackView.axis = .vertical
       bottomStackView.distribution = .equalSpacing
       view.addSubview(bottomStackView)
       
    }
    private func setConstreints(){
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        rulesButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rulesButton.topAnchor.constraint(equalTo: view.topAnchor, constant: Constants.rulesButtonTopSpacing),
            rulesButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.rulesButtonTrailingSpacing),
            rulesButton.widthAnchor.constraint(equalToConstant: Constants.rulesButtonSize),
            rulesButton.heightAnchor.constraint(equalToConstant: Constants.rulesButtonSize)
        ])
        generalStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            generalStackView.topAnchor.constraint(equalTo: rulesButton.bottomAnchor,constant: 0),
            generalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0),
            generalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            generalStackView.heightAnchor.constraint(equalToConstant: 362)
        ])
        coinImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            coinImageView.topAnchor.constraint(equalTo: generalStackView.bottomAnchor,constant: 10),
          //  coinImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0),
            coinImageView.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -5),
            coinImageView.heightAnchor.constraint(equalToConstant: 32)
        ])
        selfBestScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            selfBestScoreLabel.topAnchor.constraint(equalTo: generalStackView.bottomAnchor,constant: 10),
            selfBestScoreLabel.leadingAnchor.constraint(equalTo: view.centerXAnchor,constant: 5),
            //selfBestScoreLabel.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -5),
            selfBestScoreLabel.heightAnchor.constraint(equalToConstant: 32)
        ])
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: 0),
            bottomStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 0),
            bottomStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            bottomStackView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
    }
    

}

