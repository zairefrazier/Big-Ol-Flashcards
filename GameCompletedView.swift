//
//  GameCompletedView.swift
//  Big O Flashcards
//
//  Created by Zaire on 10/20/22.
//

import SwiftUI

struct GameCompletedView: View {
    
    var multiManagerVm: MultiMangerVM
    
    var body: some View {
        VStack {
            Text("Good Job!")
                .foregroundColor(.white)
                .font(.system(size: 50))
                .padding()
            
            Button {
                multiManagerVm.restartGame()
                
            } label: {
                
                Image(systemName: "play.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 60))
                    .padding()
                
                
                Text("Play Again?")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                
            }
            .frame(width: 300, height: 60, alignment: .center)
            .background(.blue.opacity(0.6))
            .cornerRadius(30)
            
        }
    }
}

