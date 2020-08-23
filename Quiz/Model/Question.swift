//
//  Question.swift
//  Quiz
//
//  Created by Anshul Gupta on 8/23/20.
//  Copyright © 2020 Anshul Gupta. All rights reserved.
//

import Foundation

struct Question { //convention to make struct the file name
    let question: String
    let choices: [String]
    let answer: String
    init(question: String, choices: [String], answer: String){
        self.question = question
        self.choices = choices
        self.answer = answer
        
    }
    
}
