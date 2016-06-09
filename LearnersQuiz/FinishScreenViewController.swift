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
        finalScoreLabel.text = "Quiz finished! Your score is \(score) / 20"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateScore(num: Int) {
        score = num
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
