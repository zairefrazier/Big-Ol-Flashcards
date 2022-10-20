//
//  ContentView.swift
//  Big O Flashcards
//
//  Created by Zaire on 9/28/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var multiManagerVM: MultiMangerVM
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [Color("Color"),.red], startPoint: .trailing, endPoint: .top)
                    .ignoresSafeArea()
                Circle()
                    .fill(.brown)
                    .blur(radius: 30)
                    .offset(x: 200, y: 150)
                
                VStack{
                    Home()
                        .navigationTitle("Big O Flashcards")
                        .offset(y: -100)
                    HStack{
                        NavigationLink(destination: MultiChoiceView(multiManagerVM: multiManagerVM), label: {
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(height:100)
                                    .opacity(0.2)
                                    .foregroundColor(.white)
                                Text("Multi-Choice Questions")
                                    .font(.title)
                                    .bold()
                                .foregroundColor(.white)
                            }
                            
                        })
                        Spacer()
                        NavigationLink(destination: QuizView() , label: {
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(height:100)
                                    .opacity(0.2)
                                    .foregroundColor(.white)
                                Text("Word Questions")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(.white)
                            }
                        })
                    }
                    .padding(.horizontal)
                }
            }
        }
        .preferredColorScheme(.dark)
        
    }
    
}

struct Home: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Master Big(O) Notaion and Time Complexcity")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            .multilineTextAlignment(.center)
            Text("Using Flashcards")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal)
            
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(multiManagerVM: MultiMangerVM())
                .previewInterfaceOrientation(.portrait)
                
                
        }
    }
}
