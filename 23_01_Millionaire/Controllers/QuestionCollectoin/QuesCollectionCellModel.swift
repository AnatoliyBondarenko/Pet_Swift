//
//  QuesCollectionCellModel.swift
//  23_01_ Millionaire
//
//  Created by mac on 28.01.2024.
//

import Foundation
import UIKit

struct QuesCollectionCellModel{
    var answerNumber: String
    var answerText: String
    var answerColor: String
}

var QuesCollectionCellViewModel: [QuesCollectionCellModel] = [
QuesCollectionCellModel(answerNumber: "A:", answerText: "Answer 1", answerColor: "answer_button_blue"),
QuesCollectionCellModel(answerNumber: "B:", answerText: "Answer 2", answerColor: "answer_button_blue"),
QuesCollectionCellModel(answerNumber: "C:", answerText: "Answer 3", answerColor: "answer_button_blue"),
QuesCollectionCellModel(answerNumber: "D:", answerText: "Answer 4", answerColor: "answer_button_blue"),
]

