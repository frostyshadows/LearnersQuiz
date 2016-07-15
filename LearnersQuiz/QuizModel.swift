//
//  File.swift
//  LearnersQuiz
//
//  Created by Sherry Yuan on 2016-05-15.
//  Copyright © 2016 Sherry Yuan. All rights reserved.
//

import Foundation
import UIKit
import GameKit

class QuizModel {
    
    private var correctAnswer: Sign
    private var secondAnswer: Sign
    private var thirdAnswer: Sign
    private var fourthAnswer: Sign
    private var readyForAnswer: Bool
    private var selectedCorrect: Bool
    internal var currentScore = 0
    
    // Constants representing the filenames of the images used

    let questions: [Sign] = [Sign.Stop, Sign.DoNotEnter, Sign.NoPass, Sign.NoPed, Sign.NoLeft]
    
    init() {
        correctAnswer = questions[0]
        secondAnswer = questions[1]
        thirdAnswer = questions[2]
        fourthAnswer = questions[3]
        readyForAnswer = true
        selectedCorrect = false
    }
    
    // called by QuizViewController when "Next question" button is clicked
    // returns rng question, correct answer to the question, and 3 random incorrect answers
    func askQuestion() -> ([AnyObject], [Sign]){

        readyForAnswer = true
        
        let randomIndex1 = Int(arc4random_uniform(UInt32(questions.count)))
        correctAnswer = questions[randomIndex1]
        secondAnswer = questions[(randomIndex1+1) % questions.count]
        thirdAnswer = questions[(randomIndex1+2) % questions.count]
        fourthAnswer = questions[(randomIndex1+3) % questions.count]
        
        
        // TODO: instead of correctAnswer always returned first, add another RNG to switch up order of the tuple
        
        let signArray = [correctAnswer, secondAnswer, thirdAnswer, fourthAnswer]
        
        var numbersToRandomize = [0 as AnyObject, 1 as AnyObject, 2 as AnyObject, 3 as AnyObject]
        
        numbersToRandomize = GKRandomSource.sharedRandom().arrayByShufflingObjectsInArray(numbersToRandomize)
//        
//        let signsToReturn = [signArray[numbersToRandomize[0] as! Int],
//                             signArray[numbersToRandomize[1] as! Int],
//                             signArray[numbersToRandomize[2] as! Int],
//                             signArray[numbersToRandomize[3] as! Int]]
        
        return (numbersToRandomize, signArray)
    }
    
    
    // checks answer
    func checkAnswer(givenAnswerFromUser: AnyObject) -> Bool {
        if readyForAnswer {
            let givenAnswerButton = givenAnswerFromUser as! UIButton
            let givenAnswer = givenAnswerButton.currentTitle
            readyForAnswer = false
            let correct = givenAnswer! == correctAnswer.rawValue
            selectedCorrect = correct
            if selectedCorrect {
                currentScore = currentScore + 1
            }
        }
        return selectedCorrect
    }
    
//    func getCurrentScore() -> Int {
//        return currentScore
//    }
//    
//    func incrementCurrentScore() {
//        currentScore += 1
//    }
    
    // finishes current quiz
//    func finishCurrentQuiz() {
//        
//        
//    }
    
    //returns a random sign
    //func getRandomQuestion() -> String {
    //    let randomIndex = Int(arc4random_uniform(UInt32(questionBank.count)))
    //    return Array(questionBank.keys)[randomIndex]
    //}
}