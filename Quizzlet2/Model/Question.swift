//
//  Question.swift
//  Quizzlet2
//
//  Created by Жанадил on 12/1/20.
//  Copyright © 2020 Жанадил. All rights reserved.
//

import Foundation

struct Question{
    var question:String
    var answer:[String]
    var correctAnswer:String
    
    init(q: String,a: [String],correctAnswer: String){
        question = q
        answer = a
        self.correctAnswer = correctAnswer
    }
    
    
}
