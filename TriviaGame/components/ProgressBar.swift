//
//  ProgressBar.swift
//  TriviaGame
//
//  Created by Harshitha GuruRaj on 5/26/24.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
            
            Rectangle()
                .frame(width: progress, height: 4)
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(10)
        }
    }
}

#Preview {
    ProgressBar(progress: 50)
}
