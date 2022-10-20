//
//  MultiVM.swift
//  Big O Flashcards
//
//  Created by Zaire on 10/16/22.
//

import Foundation
import SwiftUI


class MultiMangerVM: ObservableObject {
    
    static var currentIndex = 0
    
    static func createGameModel(i: Int) -> Quiz {
        return Quiz(currentQuesstionIndex: i, quizModel: quizData[i], quizCompleted: false)
    }
    
    @Published var model = MultiMangerVM.createGameModel(i: MultiMangerVM.currentIndex)
    
    func verifyAnswer(slectedOption: QuizOption) {
        
        for index in model.quizModel.optionsList.indices {
            model.quizModel.optionsList[index].isMatched = false
            model.quizModel.optionsList[index].isSelected = false
            
        }
        if let index = model.quizModel.optionsList.firstIndex(where: {$0.optionId == slectedOption.optionId}) {
            
            if slectedOption.optionId == model.quizModel.answer {
                model.quizModel.optionsList[index].isMatched = true
                model.quizModel.optionsList[index].isSelected = true
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    if (MultiMangerVM.currentIndex < 2) {
                        MultiMangerVM.currentIndex += 1
                        self.model = MultiMangerVM.createGameModel(i: MultiMangerVM.currentIndex)
                    } else {
                        self.model.quizCompleted = true
                        self.model.quizWinningStatua = false
                    }
                }
                
            }
            else {
                model.quizModel.optionsList[index].isMatched = false
                model.quizModel.optionsList[index].isSelected = true
            }
        }
    }
    
    func restartGame() {
        MultiMangerVM.currentIndex = 0
        model = MultiMangerVM.createGameModel(i: MultiMangerVM.currentIndex)
    }
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
