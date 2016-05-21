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
    
    private var correctAnswer: String
    private var secondAnswer: String
    private var thirdAnswer: String
    private var fourthAnswer: String
    
    // Constants representing the filenames of the images used
    private struct StringConstants {
        static let STOP = "Stop"
        static let DNE = "Do not enter"
        static let NOPASS = "No passing allowed at any time"
        static let NOPED = "No pedestrians allowed on roadway"
        static let NOLEFT = "No left turn at intersection"
        static let Stop = "stopSign.jpg"
        static let NoPassing = "noPassing.jpg"
        static let DoNotEnter = "dne.jpg"
        static let NoPedestrians = "noPedestrians.jpg"
        static let NoLeftTurn = "noLeftTurn.jpg"
    }
    
    // Bank of questions, first string would be correct answer, second string would correspond to an image
    private var questionBank: Dictionary<String, String> = [
        StringConstants.STOP: StringConstants.Stop,
        StringConstants.DNE: StringConstants.DoNotEnter,
        StringConstants.NOPASS: StringConstants.NoPassing,
        StringConstants.NOPED: StringConstants.NoPedestrians,
        StringConstants.NOLEFT: StringConstants.NoLeftTurn
    ]
    
    init() {
        correctAnswer = StringConstants.STOP
        secondAnswer = StringConstants.DNE
        thirdAnswer = StringConstants.NOPASS
        fourthAnswer = StringConstants.NOPED
    }
    
    // called by QuizViewController when "Next question" button is clicked
    // returns rng question, correct answer to the question, and 3 random incorrect answers
    func askQuestion() -> (String, String, String, String){
        // TODO: gets random question from questionBank
        
        let randomIndex = Int(arc4random_uniform(UInt32(questionBank.count)))
        
        correctAnswer = Array(questionBank.keys)[randomIndex]
        secondAnswer = Array(questionBank.keys)[(randomIndex+1) % 4]
        thirdAnswer = Array(questionBank.keys)[(randomIndex+2) % 4]
        fourthAnswer = Array(questionBank.keys)[(randomIndex+3) % 4]
        
        return (correctAnswer, secondAnswer, thirdAnswer, fourthAnswer)
    }
    
    // checks answer
    func checkAnswer(givenAnswerFromUser: AnyObject) -> Bool {
        let givenAnswerButton = givenAnswerFromUser as! UIButton
        let givenAnswer = givenAnswerButton.titleLabel
        return givenAnswer == correctAnswer
        
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