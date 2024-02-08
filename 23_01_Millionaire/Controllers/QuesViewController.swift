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
    }
    func returnVC (){
        print("выполняется функция  returnVC ()")
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func touchHelp5050Button(){
        print("tapHelp5050Button")
       returnVC()
    }
    
    @objc func touchHelpAudienceButton(){
        print("touchHelpAudienceButton")
    }
    
    @objc func touchHelpCallButton(){
        print("touchHelpCallButton")
    }
    
    func setupViews(){
        view.addSubview(backgroundImage)
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

