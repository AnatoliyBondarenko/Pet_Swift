//
//  NavigationController.swift
//  23_01_ Millionaire
//
//  Created by mac on 23.01.2024.
//

import Foundation
import UIKit

class NavigationController: UIViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let blueView = UIImageView()
        blueView.image = .millBackgroundImage
              let logoImage = UIImageView()
        logoImage.image = UIImage(named: "logo_image")
        logoImage.contentMode = .scaleAspectFill
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.widthAnchor.constraint(equalToConstant: 400).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 400).isActive = true
               // logoImage.backgroundColor = .clear
            
        
        view.addSubview(blueView)
        view.addSubview(logoImage)
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: view.topAnchor),
            blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
         //   logoImage.heightAnchor.constraint(equalToConstant:367),
          //  logoImage.widthAnchor.constraint(equalToConstant: 367),
        ])
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
                   let secondVC = FirstViewController()
                  // self.present(secondVC, animated: true)
            self.navigationController?.isNavigationBarHidden = true
            self.navigationController?.pushViewController(secondVC, animated: true)
               }
          }

    }
    

