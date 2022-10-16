//
//  MultiChoiceView.swift
//  Big O Flashcards
//
//  Created by Zaire on 9/29/22.
//

import SwiftUI

struct MultiChoiceView: View {    
    @State var cardCount = 4
    
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("Color"),.red], startPoint: .trailing, endPoint: .top)
                .ignoresSafeArea()
            Circle()
                .fill(.brown)
                .blur(radius: 30)
                .offset(x: 200, y: 150)
            
            VStack {
                
                Text("What is the time complexcity for insertion of Array?")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]){
                    
                    ForEach(answers[0..<cardCount], id: \.self) { emoji in
                        CardView(content: emoji)
                    }
                }
            .foregroundColor(.red)
                    
            }
            .opacity(0.3)
            .foregroundColor(.white)
        }
    }
}
var answers = ["O(n)", "O(logn)","O(1)","O(n^2)"]
struct CardView: View {
    
    @State var isFaceUp: Bool = true
    
    var content: String
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(width:170,height: 170)
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(lineWidth: 3)
                    .frame(width:170,height: 170)
                Text(content)
                    .font(.largeTitle)
            }
            else {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.red)
                    .frame(width:170,height: 170)
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
            
        }
    }
}


struct MultiChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        MultiChoiceView()
            .previewInterfaceOrientation(.portrait)
    }
}
