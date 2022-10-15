//
//  CardViewBack.swift
//  Big O Flashcards
//
//  Created by Zaire on 9/29/22.
//

import SwiftUI

struct CardViewBack: View {
    
    @Binding var degree : Double
    
    let textContent: String
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.green.opacity(0.5), lineWidth: 10)
                .padding()
            RoundedRectangle(cornerRadius: 20)
                .fill(.green.opacity(0.1))
                .padding()
            VStack(spacing:20){
                Text("Answer")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(textContent)
                    .font(.title)
                    .fontWeight(.bold)
                
            }
        }
        .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}

