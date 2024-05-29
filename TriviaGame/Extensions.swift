//
//  Extensions.swift
//  TriviaGame
//
//  Created by Chetan Kumar on 5/25/24.
//

import Foundation
import SwiftUI

extension Text{
    func blueTitle() -> some View{
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
