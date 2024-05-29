//
//  AnswerRow.swift
//  TriviaGame
//
//  Created by Harshitha GuruRaj on 5/26/24.
//

import SwiftUI

struct AnswerRow: View {
    var answer: Answer
    @State private var isSelected = false
    @EnvironmentObject var triviaManager: TriviaManager
    
    var green = Color(.green)
    var red = Color(.red)
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.text)
                .bold()
            
            if isSelected{
                
                Spacer()
                
                Image(systemName: answer.isCorrect ?
                      "checkmark.circle.fill":
                      "x.circle.fill")
                .foregroundColor(answer.isCorrect ?
                                 green : red)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(triviaManager
            .answerSelected ? (isSelected ?
                               Color("AccentColor") : .gray) : Color("AccentColor"))
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrect ?
                                     green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture{
            if !triviaManager.answerSelected{
                isSelected = true
                triviaManager.selectAnswer(answer: answer)
            }
            
        }
    }
}

#Preview {
    AnswerRow(answer: Answer(text: "Single", 
                                 isCorrect: false))
    .environmentObject(TriviaManager())
        
}
