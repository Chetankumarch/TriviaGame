//
//  Answer.swift
//  TriviaGame
//
//  Created by Chetan Kumar on 5/26/24.
//

import Foundation

struct Answer: Identifiable{
    var id = UUID()
    var text : AttributedString
    var isCorrect: Bool
}
