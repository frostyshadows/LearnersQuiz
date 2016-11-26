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
    @IBOutlet weak var imageView: UIImageView!
    
    private var brain = QuizModel()
    
    private var totalQuestions = 20
    private var numQuestions = 1
    
    @IBOutlet weak var ans1Button: UIButton!
    @IBOutlet weak var ans2Button: UIButton!
    @IBOutlet weak var ans3Button: UIButton!
    @IBOutlet weak var ans4Button: UIButton!
    
    @IBAction func AnswerButton(sender: AnyObject) {
        if let selection = (sender as! UIButton).currentTitle {
            if brain.check(answer: selection) {
                mainTextBox.text = "Good job!"
            } else {
                mainTextBox.text = "Better luck next time!"
            }
        }
        else {
            return;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }
    
    @IBAction func nextQuestion() {
        let options = brain.askQuestion()
        imageView.image = UIImage(named: questionBank[options.correct]!)
        mainTextBox.text = "Question \(numQuestions)"
        
        ans1Button.setTitle(options.firstOption.rawValue, for: UIControlState.normal)
        ans2Button.setTitle(options.secondOption.rawValue, for: UIControlState.normal)
        ans3Button.setTitle(options.thirdOption.rawValue, for: UIControlState.normal)
        ans4Button.setTitle(options.fourthOption.rawValue, for: UIControlState.normal)
        
        if numQuestions <= totalQuestions {
            questionCounter.text = "\(numQuestions)/\(totalQuestions)"
            numQuestions += 1
        } else {
            performSegue(withIdentifier: "finishScreenSegue", sender: nil)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "finishScreenSegue" {
            let nextViewController = segue.destination as! FinishScreenViewController
            nextViewController.score = brain.currentScore
        }
    }
}



