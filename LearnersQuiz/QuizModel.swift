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
    private var firstAnswer : Sign
    private var secondAnswer: Sign
    private var thirdAnswer: Sign
    private var fourthAnswer: Sign
    private var readyForAnswer = true
    internal var currentScore = 0
    
    // Constants representing the filenames of the images used

    let questions: [Sign] = [
        Sign.AccommodationAhead,
        Sign.ConstructionAhead,
        Sign.CurveAhead,
        Sign.CyclistsOnRoadway,
        Sign.DestinationSign,
        Sign.DetourAhead,
        Sign.DividedHighwayEndsAhead,
        Sign.DoNotEnter,
        Sign.DoNotPass,
        Sign.FireTruckEntranceAhead,
        Sign.GasAhead,
        Sign.HiddenSideRoadAhead,
        Sign.HospitalAhead,
        Sign.LeftOrRightOnly,
        Sign.LeftTurnOnly,
        Sign.MaxSpeed,
        Sign.MergingTrafficAhead,
        Sign.NarrowStructureAhead,
        Sign.NoLeft,
        Sign.NoParkingAllowed,
        Sign.NoParkingTimeInterval,
        Sign.OneWay,
        Sign.OpeningBridgeAhead,
        Sign.ParkingAllowedTimeInterval,
        Sign.PavementEndsAhead,
        Sign.PedestrianCrosswalkAhead,
        Sign.RailwayCrossing,
        Sign.RailwayCrossingAhead,
        Sign.RailwayCrossingOnSideRoadAhead,
        Sign.RightLaneEndsAhead,
        Sign.RoadMergesAhead,
        Sign.RoadNarrowsAhead,
        Sign.RoadSlipperyAhead,
        Sign.RoundaboutAhead,
        Sign.SchoolBusStopAhead,
        Sign.SchoolZone,
        Sign.SignalLightsAhead,
        Sign.SlowerTrafficKeepRight,
        Sign.SteepHillAhead,
        Sign.StopSign,
        Sign.StopSignAhead,
        Sign.StraightOnly,
        Sign.TruckCrossingAhead,
        Sign.TwoWayTrafficAhead,
        Sign.WatchForDeerAhead,
        Sign.WatchForRocksAhead,
        Sign.WindingRoadAhead,
        Sign.WinterTires,
        Sign.WrongWay,
        Sign.Yield
    ]

    
    init() {
        correctAnswer = questions[0]
        firstAnswer = questions[0]
        secondAnswer = questions[1]
        thirdAnswer = questions[2]
        fourthAnswer = questions[3]
    }
    
    
    // called by QuizViewController when "Next question" button is clicked
    // returns rng question, correct answer to the question, and 3 random incorrect answers
    func askQuestion() -> (correct: Sign, firstOption: Sign, secondOption: Sign, thirdOption: Sign, fourthOption: Sign) {

        readyForAnswer = true
        
        let randomIndex1 = Int(arc4random_uniform(UInt32(questions.count)))
        var randomIndex2: Int
        repeat {
            randomIndex2 = Int(arc4random_uniform(UInt32(questions.count)))
        } while (randomIndex2 == randomIndex1)
        var randomIndex3: Int
        repeat {
            randomIndex3 = Int(arc4random_uniform(UInt32(questions.count)))
        } while ((randomIndex3 == randomIndex1) || (randomIndex3 == randomIndex2))
        var randomIndex4: Int
        repeat {
            randomIndex4 = Int(arc4random_uniform(UInt32(questions.count)))
        } while ((randomIndex4 == randomIndex1) || (randomIndex4 == randomIndex2) || (randomIndex4 == randomIndex3))
        
        firstAnswer = questions[randomIndex1]
        secondAnswer = questions[randomIndex2]
        thirdAnswer = questions[randomIndex3]
        fourthAnswer = questions[randomIndex4]
        
        let indices = [randomIndex1, randomIndex2, randomIndex3, randomIndex4]
        correctAnswer = questions[indices[Int(arc4random_uniform(UInt32(indices.count)))]]
        
        return (correctAnswer, firstAnswer, secondAnswer, thirdAnswer, fourthAnswer)
    }
    
    // checks answer
    func check(answer: String) -> Bool {
        var correct = false
        if readyForAnswer {
            readyForAnswer = false
            correct = answer == correctAnswer.rawValue
            if correct {
                currentScore = currentScore + 1
            }
        }
        return correct
    }
}
