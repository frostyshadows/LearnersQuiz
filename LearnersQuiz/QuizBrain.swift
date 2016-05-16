//
//  File.swift
//  LearnersQuiz
//
//  Created by Sherry Yuan on 2016-05-15.
//  Copyright © 2016 Sherry Yuan. All rights reserved.
//

import Foundation
import UIKit

class QuizBrain {
    
    private struct StringConstants {
        static let Stop = "stopSign.jpg"
    }
    
    private var currentCorrectAnswer = "Stop"
    
    // Bank of questions, integer would correspond to an image
    private var questionBank: Dictionary<String, String> = [
        "Stop": StringConstants.Stop
    ]
    
    // called by QuizViewController when "Next question" button is clicked
    func askQuestion() -> (String, String){
        // TODO: gets random question from questionBank
        
        let randomIndex = Int(arc4random_uniform(UInt32(questionBank.count)))
        
        let question = Array(questionBank.keys)[randomIndex]
        let currentCorrectAnswer = Array(questionBank.keys)[randomIndex]
        
        return (question, currentCorrectAnswer)
    }
    
    // checks answer
    func checkAnswer(givenAnswerFromUser: AnyObject) -> Bool {
        let givenAnswer = givenAnswerFromUser as! String
        if givenAnswer == currentCorrectAnswer {
            return true
        }
        return false
        
    }
    
    // finishes current quiz
    func finishCurrentQuiz() {
        
    }
}