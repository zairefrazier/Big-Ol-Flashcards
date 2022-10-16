//
//  MultiVM.swift
//  Big O Flashcards
//
//  Created by Zaire on 10/16/22.
//

import Foundation
import SwiftUI


class MultiMangerVM {
    var data = quizData[0]
    
}


extension MultiMangerVM {
    static var quizData: [QuizModel] {
        [
            QuizModel(question: "What is the time complexcity for insertion of an Array?", answer: "B",
                      optionsList: [QuizOption(id: 01, optionId: "A", option: "O(1)"),
                                    QuizOption(id: 02, optionId: "B", option: "O(n)"),
                                    QuizOption(id: 03, optionId: "C", option: "O(n^2)"),
                                    QuizOption(id: 04, optionId: "D", option: "O(logn)")]),
            QuizModel(question: "What is the time complexcity for Access of an Array?", answer: "A",
                      optionsList: [QuizOption(id: 11, optionId: "A", option: "O(1)"),
                                    QuizOption(id: 12, optionId: "B", option: "O(n)"),
                                    QuizOption(id: 13, optionId: "C", option: "O(n^2)"),
                                    QuizOption(id: 14, optionId: "D", option: "O(logn)")]),
            QuizModel(question: "What is the time complexcity for insertion of an AVL Tree?", answer: "C",
                      optionsList: [QuizOption(id: 21, optionId: "A", option: "O(1)"),
                                    QuizOption(id: 22, optionId: "B", option: "O(n)"),
                                    QuizOption(id: 23, optionId: "C", option: "O(n^2)"),
                                    QuizOption(id: 24, optionId: "D", option: "O(logn)")])
        ]
    }
}
