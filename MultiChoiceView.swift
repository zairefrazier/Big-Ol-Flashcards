//
//  MultiChoiceView.swift
//  Big O Flashcards
//
//  Created by Zaire on 9/29/22.
//

import SwiftUI

struct MultiChoiceView: View {    
    @State var cardCount = 4
    @ObservedObject var multiManagerVM: MultiMangerVM
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("Color"),.red], startPoint: .trailing, endPoint: .top)
                .ignoresSafeArea()
            Circle()
                .fill(.brown)
                .blur(radius: 30)
                .offset(x: 200, y: 150)
            if (multiManagerVM.model.quizCompleted){
                GameCompletedView(multiManagerVm: multiManagerVM)
            } else {
            VStack {
                
                Text(multiManagerVM.model.quizModel.question)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                
                OptionsGridView(multiMangerVM: multiManagerVM)
            }
            .opacity(0.8)
            .foregroundColor(.white)
            }
            
        }
    }
}

struct MultiChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        MultiChoiceView(multiManagerVM: MultiMangerVM() )
            .previewInterfaceOrientation(.portrait)
    }
}
