//
//  QuestionView.swift
//  TriviaGame
//
//  Created by Harshitha GuruRaj on 5/25/24.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        VStack(spacing: 40){
            HStack{
                Text("Trivia Game")
                    .blueTitle()
                Spacer()
                Text("\(triviaManager.index + 1) out of \(triviaManager.length)")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            ProgressBar(progress: triviaManager.progress)
            
            VStack(alignment: .leading, spacing: 20){
                Text(triviaManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.blue)
                
                ForEach(triviaManager.answerChoices, id: \.id){
                    answer in
                    AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                }
            }
            Button(action: {
                triviaManager.goToNextQuestion()
            }, label: {
                PrimaryButton(text: "Next", background: triviaManager.answerSelected ?
                              Color("AccentColor") : Color(.gray))
            })
            .disabled(!triviaManager.answerSelected)
            
            Spacer()
            
        }
        .padding()
        .padding(.top, 60)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background {
            Color.teal.opacity(0.3)
        }
        .navigationBarHidden(true)
        .ignoresSafeArea()
        

    }
}

#Preview {
    QuestionView()
        .environmentObject(TriviaManager())
}
