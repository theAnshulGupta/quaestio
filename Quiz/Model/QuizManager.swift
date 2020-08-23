//
//  QuizManager.swift
//  Quiz
//
//  Created by Anshul Gupta on 8/23/20.
//  Copyright © 2020 Anshul Gupta. All rights reserved.
//

import Foundation
struct QuizManager {
    
    let quiz = [
        Question(question: "Which is the largest organ in the human body?", choices: ["Heart", "Skin", "Large Intestine"], answer: "Skin"),
        Question(question: "Five dollars is worth how many nickels?", choices: ["25", "50", "100"], answer: "100"),
        Question(question: "What do the letters in the GMT time zone stand for?", choices: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], answer: "Greenwich Mean Time"),
        Question(question: "What is the French word for 'hat'?", choices: ["Chapeau", "Écharpe", "Bonnet"], answer: "Chapeau"),
        Question(question: "In past times, what would a gentleman keep in his fob pocket?", choices: ["Notebook", "Handkerchief", "Watch"], answer: "Watch"),
        Question(question: "How would one say goodbye in Spanish?", choices: ["Au Revoir", "Adiós", "Salir"], answer: "Adiós"),
        Question(question: "Which of these colours is NOT featured in the logo for Google?", choices: ["Green", "Orange", "Blue"], answer: "Orange"),
        Question(question: "What alcoholic drink is made from molasses?", choices: ["Rum", "Whisky", "Gin"], answer: "Rum"),
        Question(question: "What type of animal was Harambe?", choices: ["Panda", "Gorilla", "Crocodile"], answer: "Gorilla"),
        Question(question: "Where is Tasmania located?", choices: ["Indonesia", "Australia", "Scotland"], answer: "Australia")
    ]
    
    
    var questionNumber = 0;
    var score = 0;
    
    
    mutating func checkAnswer(_ userAnswer:String) -> Bool {
        if userAnswer == quiz[questionNumber].answer{
            score+=1
            return true;
        }
        return false;
    }
    
}
