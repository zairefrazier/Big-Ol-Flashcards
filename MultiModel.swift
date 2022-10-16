//
//  MultiModel.swift
//  Big O Flashcards
//
//  Created by Zaire on 10/16/22.
//

import Foundation
import SwiftUI



struct Quiz {
    var currentQuesstionIndex: Int
    var quizModel: QuizModel
    var quizCompleted: Bool
    var quizWinningStatua: Bool = false    
}

struct QuizModel {
    var question: String
    var answer: String
    var optionsList: [QuizOption]
}

struct QuizOption : Identifiable {
    var id: Int
    var optionId: String
    var option: String
    var isSelected: Bool = false
    var isMatched: Bool = false
}
