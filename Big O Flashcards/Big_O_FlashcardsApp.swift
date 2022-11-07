//
//  Big_O_FlashcardsApp.swift
//  Big O Flashcards
//
//  Created by Zaire on 9/28/22.
//

import SwiftUI
import Firebase

@main
struct Big_O_FlashcardsApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView(multiManagerVM: MultiMangerVM())
        }
    }
}
