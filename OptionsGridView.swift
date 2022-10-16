//
//  OptionsGridView.swift
//  Big O Flashcards
//
//  Created by Zaire on 10/16/22.
//

import SwiftUI

struct OptionsGridView: View {
    
    var colums: [GridItem] = Array(repeating: GridItem(.fixed(170), spacing: 20), count: 2)
    
    var body: some View {
        LazyVGrid(columns: colums){
            
            ForEach(MultiMangerVM().data.optionsList) { quizOption in
                OptionCardView(quizOption: quizOption)
            }
        }
    .foregroundColor(.red)
    }
}


struct OptionCardView: View {
    var quizOption: QuizOption
    
    var body: some View {
          
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .frame(width:170,height: 170)
            RoundedRectangle(cornerRadius: 20)
                .strokeBorder(lineWidth: 3)
                .frame(width:170,height: 170)
            VStack {
                if (quizOption.isMatched) && (quizOption.isMatched) {
                    OptionsStatusImageView(imageName: "checkmark")
                } else if (!(quizOption.isMatched) && (quizOption.isMatched)) {
                    OptionsStatusImageView(imageName: "xmark")
                } else {
                    OptionView(quizOption: quizOption)
                }
            }
            .frame(width: 150, height: 150)
        }
        .padding(.horizontal)
    }
    
}

struct OptionView: View {
    var quizOption: QuizOption
    
    var body: some View {
        VStack{
            
            Text(quizOption.optionId)
                .font(.system(size: 30, weight: .medium, design: .rounded))
                .cornerRadius(25)
                .foregroundColor(.black)
                .frame(width: 50, height: 50)
            
            Text(quizOption.option)
                .font(.system(size: 25, weight: .medium, design: .rounded))
                .foregroundColor(.black)
                .frame(width: 150, height: 40)
            
        }
        
    }
}

struct OptionsStatusImageView : View {
    var imageName: String
    
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .font(.system(size: 20, weight: .medium, design: .monospaced))
        
    }
}

struct OptionsGridView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsGridView()
    }
}
