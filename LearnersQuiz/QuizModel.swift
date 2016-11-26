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
    
    private var correctAnswer = Sign.Invalid
    private var firstAnswer = Sign.Invalid
    private var secondAnswer = Sign.Invalid
    private var thirdAnswer = Sign.Invalid
    private var fourthAnswer = Sign.Invalid
    private var readyForAnswer = false
    internal var currentScore = 0

    
    init() {
        
        let indices = getRandomIndices()
        
        firstAnswer = questions[indices[0]]
        secondAnswer = questions[indices[1]]
        thirdAnswer = questions[indices[2]]
        fourthAnswer = questions[indices[3]]
        
        correctAnswer = questions[indices[Int(arc4random_uniform(UInt32(indices.count)))]]
    }
    
    
    // called by QuizViewController when "Next question" button is clicked
    // returns rng question, correct answer to the question, and 3 random incorrect answers
    func askQuestion() -> (correct: Sign, firstOption: Sign, secondOption: Sign, thirdOption: Sign, fourthOption: Sign) {

        readyForAnswer = true
        
        let indices = getRandomIndices()
        
        firstAnswer = questions[indices[0]]
        secondAnswer = questions[indices[1]]
        thirdAnswer = questions[indices[2]]
        fourthAnswer = questions[indices[3]]

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
    
    func getRandomIndices() -> [Int] {
        let firstIndex = Int(arc4random_uniform(UInt32(questions.count)))
        var secondIndex: Int
        repeat {
            secondIndex = Int(arc4random_uniform(UInt32(questions.count)))
        } while (secondIndex == firstIndex)
        var thirdIndex: Int
        repeat {
            thirdIndex = Int(arc4random_uniform(UInt32(questions.count)))
        } while ((thirdIndex == firstIndex) || (thirdIndex == secondIndex))
        var fourthIndex: Int
        repeat {
            fourthIndex = Int(arc4random_uniform(UInt32(questions.count)))
        } while ((fourthIndex == firstIndex) || (fourthIndex == secondIndex) || (fourthIndex == thirdIndex))
        return [firstIndex, secondIndex, thirdIndex, fourthIndex]
    }
}
