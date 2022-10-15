//
//  CardView.swift
//  Big O Flashcards
//
//  Created by Zaire on 9/29/22.
//

import SwiftUI

struct CardsView: View {
    
    @Binding var degree : Double
    
    let textContent: String
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.red.opacity(0.5), lineWidth: 10)
                .padding()
            RoundedRectangle(cornerRadius: 20)
                .fill(.red.opacity(0.1))
                .padding()
            VStack(spacing:20){
                Text("Qesution")
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
