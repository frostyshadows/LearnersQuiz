//
//  FinishScreenViewController.swift
//  LearnersQuiz
//
//  Created by Sherry Yuan on 2016-06-09.
//  Copyright © 2016 Sherry Yuan. All rights reserved.
//

import UIKit

class FinishScreenViewController: UIViewController {
    
    var score = 0

    @IBOutlet weak var finalScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalScoreLabel.text = "Quiz finished! Your score is \(score) / 20."
    }
    
    func updateScore(num: Int) {
        score = num
    }
}
