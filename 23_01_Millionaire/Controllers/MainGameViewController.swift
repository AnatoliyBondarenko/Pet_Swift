//
//  MainGameViewController.swift
//  23_01_ Millionaire
//
//  Created by mac on 24.01.2024.
//

import Foundation
import UIKit
class MainGameViewController: UIViewController {
    
    //MARK: - Create UI
    
    private lazy var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = .millBackgroundImage
        return image
    }()
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo_image")
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .clear

        return imageView
    }()
    
    let gameCollectoinView = GameCollectoinView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstreints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           
           // Перезаполнение коллекции
           //reloadData()
        gameCollectoinView.collectionView.reloadData()
       }
   

    
    private func setupViews(){
        tapView()
        view.addSubview(backgroundImage)
        view.addSubview(gameCollectoinView)
        view.addSubview(logoImageView)
       
     }
    
    private func tapView(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapScrin))
                view.addGestureRecognizer(tapGesture)
    }
    @objc func tapScrin(){
        let quesVC = QuesViewController()
        self.navigationController?.pushViewController(quesVC, animated: true)
    }
    
    private func setConstreints(){
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        gameCollectoinView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            gameCollectoinView.heightAnchor.constraint(equalToConstant: 582),
            gameCollectoinView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            gameCollectoinView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            gameCollectoinView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -84)
        ])
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.bottomAnchor.constraint(equalTo: gameCollectoinView.bottomAnchor, constant: -537),
        logoImageView.widthAnchor.constraint(equalToConstant: 150),
        logoImageView.heightAnchor.constraint(equalToConstant: 150),
        ])
        
    }
}
