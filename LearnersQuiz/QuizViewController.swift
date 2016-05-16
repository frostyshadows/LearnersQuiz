//
//  ViewController.swift
//  LearnersQuiz
//
//  Created by Sherry Yuan on 2016-05-15.
//  Copyright © 2016 Sherry Yuan. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {


    private var brain = QuizBrain()
    
    private var numQuestions = 0
    
    @IBAction func AnswerOneButton(sender: AnyObject) {
        brain.checkAnswer(sender)
  //      if numQuestions < 20 {
  //          brain.askQuestion()
  //          numQuestions += 1
  //      } else {
  //          brain.finishCurrentQuiz()
  //      }
    }



}

