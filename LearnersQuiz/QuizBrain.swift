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
    
    var currentQuestion: String
    
//    private struct AnswerOptions {
    private var currentSign: String
    private var currentCorrectAnswer: String
    private var FirstAnswer: String
    private var SecondAnswer: String
    private var ThirdAnswer: String
//   }
    
    private struct StringConstants {
        static let Stop = "stopSign.jpg"
        static let NoPassing = "noPassing.jpg"
        static let DNE = "dne.jpg"
        static let NoPedestrians = "noPedestrians.jpg"
        static let NoLeftTurn = "noLeftTurn.jpg"
    }
    
    // ideally the first question would be random too
    init(){
        currentQuestion = StringConstants.Stop
        currentCorrectAnswer = "Stop"
        currentSign = StringConstants.Stop
        FirstAnswer = "Do not enter"
        SecondAnswer = "No passing allowed at any time"
        ThirdAnswer = "No pedestrians allowed on roadway"
    }
    
    // Bank of questions, first string would be correct answer, second string would correspond to an image
    private var questionBank: Dictionary<String, String> = [
        "Stop": StringConstants.Stop,
        "Do not enter": StringConstants.DNE,
        "No passing allowed at any time": StringConstants.NoPassing,
        "No pedestrians allowed on roadway": StringConstants.NoPedestrians,
        "No left turn at intersection": StringConstants.NoLeftTurn
    ]

    
    // called by QuizViewController when "Next question" button is clicked
    // returns rng question, correct answer to the question, and 3 random incorrect answers
    func askQuestion() -> (String, String, String, String, String){
        // TODO: gets random question from questionBank
        
        var randomIndex = Int(arc4random_uniform(UInt32(questionBank.count)))
        
        let question = Array(questionBank.keys)[randomIndex]
        let currentCorrectAnswer = Array(questionBank.keys)[randomIndex]
        
        randomIndex = Int(arc4random_uniform(UInt32(questionBank.count)))
        let randomAns1 = Array(questionBank.keys)[randomIndex]
        
        randomIndex = Int(arc4random_uniform(UInt32(questionBank.count)))
        let randomAns2 = Array(questionBank.keys)[randomIndex]
        
        randomIndex = Int(arc4random_uniform(UInt32(questionBank.count)))
        let randomAns3 = Array(questionBank.keys)[randomIndex]
        
        return (question, currentCorrectAnswer, randomAns1, randomAns2, randomAns3)
    }
    
    // checks answer
    func checkAnswer(givenAnswerFromUser: AnyObject) -> Bool {
        let givenAnswerButton = givenAnswerFromUser as! UIButton
        let givenAnswer = givenAnswerButton.titleLabel
        if givenAnswer == currentCorrectAnswer {
            return true
        }
        return false
        
    }
    
    // finishes current quiz
    func finishCurrentQuiz() {
        
    }
    
    //returns a random sign
    //func getRandomQuestion() -> String {
    //    let randomIndex = Int(arc4random_uniform(UInt32(questionBank.count)))
    //    return Array(questionBank.keys)[randomIndex]
    //}
}