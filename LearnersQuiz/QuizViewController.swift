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
    
    private var brain = QuizBrain()
    
    private var numQuestions = 0
    
    @IBOutlet weak var ans1Button: UIButton!
    @IBOutlet weak var ans2Button: UIButton!
    @IBOutlet weak var ans3Button: UIButton!
    @IBOutlet weak var ans4Button: UIButton!
    
    @IBAction func AnswerButton(sender: AnyObject) {
        if brain.checkAnswer(sender) == true {
            mainTextBox.text = "Good job!"
        } else {
            mainTextBox.text = "Better luck next time"
        }
        
    }
    
    @IBAction func nextQuestion() {
        // qAndA will be a tuple
        let qAndA = brain.askQuestion()
        // sets textBox to show question
        mainTextBox.text = qAndA.0
        
        ans1Button.setTitle("\(qAndA.1)", forState: UIControlState.Normal)
        
        ans2Button.setTitle("\(qAndA.2)", forState: UIControlState.Normal)
        
        ans3Button.setTitle("\(qAndA.3)", forState: UIControlState.Normal)
        
        ans4Button.setTitle("\(qAndA.4)", forState: UIControlState.Normal)
        
    }
    
        
  //      if numQuestions < 20 {
  //          brain.askQuestion()
  //          numQuestions += 1
  //      } else {
  //          brain.finishCurrentQuiz()
  //      }
    }



}

