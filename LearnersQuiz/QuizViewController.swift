//
//  ViewController.swift
//  LearnersQuiz
//
//  Created by Sherry Yuan on 2016-05-15.
//  Copyright © 2016 Sherry Yuan. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {


    @IBOutlet weak var mainTextBox: UILabel!
    @IBOutlet weak var questionCounter: UILabel!
    
    private var brain = QuizBrain()
    
    private var totalQuestions = 20
    private var numQuestions = 0
//    private var numCorrect = 0
    
    private struct StringConstants {
        static let Stop = "stopSign.jpg"
        static let NoPassing = "noPassing.jpg"
        static let DoNotEnter = "dne.jpg"
        static let NoPedestrians = "noPedestrians.jpg"
        static let NoLeftTurn = "noLeftTurn.jpg"
    }
    
    // Bank of questions, first string would be correct answer, second string would correspond to an image
    private var questionBank: Dictionary<Sign, String> = [
        Sign.Stop: StringConstants.Stop,
        Sign.DoNotEnter: StringConstants.DoNotEnter,
        Sign.NoPass: StringConstants.NoPassing,
        Sign.NoPed: StringConstants.NoPedestrians,
        Sign.NoLeft: StringConstants.NoLeftTurn
    ]
    
    @IBOutlet weak var ans1Button: UIButton!
    @IBOutlet weak var ans2Button: UIButton!
    @IBOutlet weak var ans3Button: UIButton!
    @IBOutlet weak var ans4Button: UIButton!
    
    @IBAction func AnswerButton(sender: AnyObject) {
        if brain.checkAnswer(sender) {
            mainTextBox.text = "Good job!"
            brain.currentScore += 1
        } else {
            mainTextBox.text = "Better luck next time"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }
    
    @IBAction func nextQuestion() {
        // qAndA will be a tuple
        let qAndA = brain.askQuestion()
        // sets textBox to show question
        mainTextBox.text = questionBank[qAndA.0]
        
        ans1Button.setTitle(qAndA.0.rawValue, forState: UIControlState.Normal)
        
        ans2Button.setTitle(qAndA.1.rawValue, forState: UIControlState.Normal)
        
        ans3Button.setTitle(qAndA.2.rawValue, forState: UIControlState.Normal)
        
        ans4Button.setTitle(qAndA.3.rawValue, forState: UIControlState.Normal)
        
        if numQuestions < totalQuestions {
            numQuestions += 1
            questionCounter.text = "\(numQuestions)/\(totalQuestions)"
        } else {
            performSegueWithIdentifier("finishScreenSegue", sender: nil)
            //finishCurrentQuiz()
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "finishScreenSegue" {
            let nextViewController = segue.destinationViewController as! FinishScreenViewController
            nextViewController.score = brain.currentScore
        }
    }
    
//    func finishCurrentQuiz() {
//        mainTextBox.text = "Quiz finished! You got \(numCorrect) / 20"
//    }
    
}



