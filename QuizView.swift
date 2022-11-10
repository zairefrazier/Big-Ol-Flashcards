//
//  QuizView.swift
//  Big O Flashcards
//
//  Created by Zaire on 9/29/22.
//

import SwiftUI

struct QuizView: View {
    
    @State var backDegree = 90.0
    @State var frontDegree =  0.0
    @State var isFlipped = false
    let dureationAndDelay: CGFloat = 0.1
    
    var body: some View {
        VStack {
            ZStack{
                CardsView(degree: $frontDegree, textContent: "Example 1")
                CardViewBack(degree: $backDegree, textContent: "Example Answer 1")
            }
            .onTapGesture {
                flipCard()
            }
        }
    }
    
    func flipCard() {
        isFlipped.toggle()
        
        if isFlipped {
            withAnimation(.linear(duration: dureationAndDelay)) {
                backDegree = 90
            }
            withAnimation(.linear(duration: dureationAndDelay)) {
                frontDegree = 0
            }
        } else {
            withAnimation(.linear(duration: dureationAndDelay)) {
                frontDegree = -90
            }
            withAnimation(.linear(duration: dureationAndDelay)) {
                backDegree = 0
            }
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
