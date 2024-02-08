//
//  GameCollectionCellModel.swift
//  23_01_ Millionaire
//
//  Created by mac on 27.01.2024.
//

import Foundation
import UIKit

struct GameCollectionCellModel {
    var stepNumber: String
    var stepPrice: String
    var stepColor: String
}

var GameCollectionCellViewModel: [GameCollectionCellModel] = [
    GameCollectionCellModel(stepNumber: "15:", stepPrice: "$ 1,000,000", stepColor: "levels_yellow_button"),
    GameCollectionCellModel(stepNumber: "14:", stepPrice: "$ 500,000", stepColor: "levels_dark_blue_button"),
    GameCollectionCellModel(stepNumber: "13:", stepPrice: "$ 250,000", stepColor: "levels_dark_blue_button"),
    GameCollectionCellModel(stepNumber: "12:", stepPrice: "$ 100,000", stepColor: "levels_dark_blue_button"),
    GameCollectionCellModel(stepNumber: "11:", stepPrice: "$ 50,000", stepColor: "levels_dark_blue_button"),
    GameCollectionCellModel(stepNumber: "10:", stepPrice: "$ 25,000", stepColor: "levels_blue_button"),
    GameCollectionCellModel(stepNumber: "9:", stepPrice: "$ 15,000", stepColor: "levels_dark_blue_button"),
    GameCollectionCellModel(stepNumber: "8:", stepPrice: "$ 12,500", stepColor: "levels_dark_blue_button"),
    GameCollectionCellModel(stepNumber: "7:", stepPrice: "$ 10,000", stepColor: "levels_dark_blue_button"),
    GameCollectionCellModel(stepNumber: "6:", stepPrice: "$ 7,500", stepColor: "levels_dark_blue_button"),
    GameCollectionCellModel(stepNumber: "5:", stepPrice: "$ 5,000", stepColor: "levels_blue_button"),
    GameCollectionCellModel(stepNumber: "4:", stepPrice: "$ 3,500", stepColor: "levels_dark_blue_button"),
    GameCollectionCellModel(stepNumber: "3:", stepPrice: "$ 2,000", stepColor: "levels_dark_blue_button"),
    GameCollectionCellModel(stepNumber: "2:", stepPrice: "$ 1,000", stepColor: "levels_dark_blue_button"),
    GameCollectionCellModel(stepNumber: "1:", stepPrice: "$ 500", stepColor: "levels_dark_blue_button"),
]

