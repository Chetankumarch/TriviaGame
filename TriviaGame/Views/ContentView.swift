//
//  ContentView.swift
//  TriviaGame
//
//  Created by Chetan Kumar on 5/25/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()

    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
            
                VStack(spacing: 20){
                    Text("Trivia Game")
                        .blueTitle()
                    
                    Text("Are you ready to test your trivia skills?")
                        .foregroundColor(Color("AccentColor"))
                }
                
                NavigationLink{
                    TriviaView()
                        .environmentObject(triviaManager)
                }label: {
                    PrimaryButton(text: "Let's go!")
                }
                
               
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .background {
                Color.teal.opacity(0.3)
            }
        .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
