//
//  QuizBrain.swift
//  Quizzlet2
//
//  Created by Жанадил on 12/1/20.
//  Copyright © 2020 Жанадил. All rights reserved.
//

import Foundation

struct QuizBrain{
    var arrNum = 0
    var count = 0
    let arr = [
               Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
               Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
               Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
               Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
               Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
               Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
               Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
               Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
               Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
               Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
                ]
    
    mutating func quizBrainFunc(aaa:String) -> Bool{
        if(aaa==arr[arrNum].correctAnswer){
            count+=1
            return true
        }else{
           return false
        }
    }
    
    func getQuestionText()->String{
        return arr[arrNum].question
    }
    
    func getProgress()->Float{
       return Float(arrNum+1)/Float(arr.count)
    }
    
    mutating func nextQuestion(){
        if(arrNum < arr.count-1){
            arrNum+=1
                
        }else{
            arrNum = 0
            count = 0
        }
    }
    
    func getScore()->Int{
        return count
    }
    func getButtonText(aaa:Int) -> String{
        return arr[arrNum].answer[aaa]
    }
}
