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
    
    // Bank of questions, integer would correspond to an image
    private var questionBank: Dictionary<String, String> = [
        "Stop": StringConstants.Stop
    ]
    
    // called by QuizViewController when "Next question" button is clicked
    private func askQuestion() -> (String, String){
        // TODO: gets random question from questionBank
        
        let random = Int(arc4random_uniform(UInt32(questionBank.count)))
        
        return ("stopSign.jpg", "Stop")
    }
}