//
//  extensionUI.swift
//  23_01_ Millionaire
//
//  Created by mac on 24.01.2024.
//

import Foundation
import UIKit

extension UIImage {
    static let millBackgroundImage: UIImage = UIImage(named: "background_image")!
    static let millLogoImage: UIImage = UIImage(named: "logo")!
    static let millHelpImage: UIImage = UIImage(named: "help")!
}

extension UIColor {
    static var whiteTitleColor: UIColor {
        UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    static var rulesBackgroundColor: UIColor {
        UIColor(red: 49, green: 52, blue: 69, alpha: 1)
    }

    static var descriptionTitleColor: UIColor {
        UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)
    }
    
    static var welcomeBackgroundColor: UIColor {
        UIColor(red: 0.191, green: 0.205, blue: 0.271, alpha: 1)
    }
    
    static var timerBackgroundWhiteColor: UIColor {
        UIColor(red: 1, green: 1, blue: 1, alpha: 0.1)
    }
    
    static var timerItemWhiteColor: UIColor {
        UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    }

    static var timerBackgroundYellowColor: UIColor {
        UIColor(red: 1, green: 0.66, blue: 0, alpha: 0.3)
    }
    
    static var timerItemYellowColor: UIColor {
        UIColor(red: 1, green: 0.702, blue: 0.25, alpha: 1)
    }
    
    static var timerBackgroundRedColor: UIColor {
        UIColor(red: 0.514, green: 0.133, blue: 0.012, alpha: 0.5)
    }
    
    static var timerItemRedColor: UIColor {
        UIColor(red: 1, green: 0.384, blue: 0.192, alpha: 1)
    }
}

extension UILabel {
    static var teamMemberLabel: UILabel {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        label.textColor = .whiteTitleColor
        label.textAlignment = .left
        return label
    }
}

extension UILabel {
    func blink() {
        self.alpha = 0.0;
        UIView.animate(withDuration: 0.8, //Time duration you want,
                            delay: 0.0,
                       options: [.autoreverse, .repeat],
                       animations: { [weak self] in self?.alpha = 1.0 },
                       completion: { [weak self] _ in self?.alpha = 0.0 })
    }
}
