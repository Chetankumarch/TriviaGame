//
//  TriviaView.swift
//  TriviaGame
//
//  Created by Harshitha GuruRaj on 5/26/24.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        if triviaManager.reachedEnd{
            VStack(spacing: 20){
              Text("Trivia Game")
                    .blueTitle()
              Text("Congratulations, you completed the game! 🥳")
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button(action: {
                    Task.init{
                        await triviaManager.fetchTrivia()
                    }
                }, label: {
                    PrimaryButton(text: "Play again")
                })
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color.teal.opacity(0.3)
            }
        }else{
            QuestionView()
                .environmentObject(triviaManager)
        }
        
    }
}

#Preview {
    TriviaView()
        .environmentObject(TriviaManager())
}
