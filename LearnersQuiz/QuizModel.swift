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
    internal var currentScore = 0
    
    // Constants representing the filenames of the images used

    let questions: [Sign] = [
        Sign.CurveAhead,
        Sign.DestinationSign,
        Sign.DividedHighwayEndsAhead,
        Sign.DoNotEnter,
        Sign.DoNotPass,
        Sign.HiddenSideRoadAhead,
        Sign.LeftOrRightOnly,
        Sign.LeftTurnOnly,
        Sign.MaxSpeed,
        Sign.MergingTrafficAhead,
        Sign.NoLeft,
        Sign.NoParkingAllowed,
        Sign.NoParkingTimeInterval,
        Sign.OneWay,
        Sign.ParkingAllowedTimeInterval,
        Sign.RailwayCrossing,
        Sign.RightLaneEndsAhead,
        Sign.RoadNarrowsAhead,
        Sign.SchoolZone,
        Sign.SlowerTrafficKeepRight,
        Sign.Stop,
        Sign.StraightOnly,
        Sign.TwoWayTrafficAhead,
        Sign.WindingRoadAhead,
        Sign.WinterTires,
        Sign.WrongWay,
        Sign.Yield
    ]

    
    init() {
    
        correctAnswer = questions[0]
        secondAnswer = questions[1]
        thirdAnswer = questions[2]
        fourthAnswer = questions[3]
        readyForAnswer = true
    }
    
    // called by QuizViewController when "Next question" button is clicked
    // returns rng question, correct answer to the question, and 3 random incorrect answers
    func askQuestion() -> [Sign]{

        readyForAnswer = true
        
        let randomIndex1 = Int(arc4random_uniform(UInt32(questions.count)))
        correctAnswer = questions[randomIndex1]
        secondAnswer = questions[(randomIndex1+1) % questions.count]
        thirdAnswer = questions[(randomIndex1+2) % questions.count]
        fourthAnswer = questions[(randomIndex1+3) % questions.count]
        
        let signs = [correctAnswer, secondAnswer, thirdAnswer, fourthAnswer]
        let numbers = randomizeNumbersOneToFour()
        
        return [correctAnswer, signs[numbers[0]], signs[numbers[1]], signs[numbers[2]], signs[numbers[3]]]
    }
    
    // checks answer
    func checkAnswer(givenAnswerFromUser: AnyObject) -> Bool {
        var correct = false
        if readyForAnswer {
            let givenAnswerButton = givenAnswerFromUser as! UIButton
            let givenAnswer = givenAnswerButton.currentTitle
            readyForAnswer = false
            correct = givenAnswer! == correctAnswer.rawValue
            if correct {
                currentScore = currentScore + 1
            }
        }
        return correct
    }
    
    func randomizeNumbersOneToFour() -> [Int] {
        let numberOne = arc4random_uniform(4)
        
        var numberTwo = arc4random_uniform(4)
        while numberOne == numberTwo {
            numberTwo = arc4random_uniform(4)
        }
        var numberThree = arc4random_uniform(4)
        while (numberOne == numberThree || numberTwo == numberThree) {
            numberThree = arc4random_uniform(4)
        }
        var numberFour = arc4random_uniform(4)
        while (numberOne == numberFour || numberTwo == numberFour || numberThree == numberFour) {
            numberFour = arc4random_uniform(4)
        }
        return [Int(numberOne), Int(numberTwo), Int(numberThree), Int(numberFour)]
    }
}