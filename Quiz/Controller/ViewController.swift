//
//  ViewController.swift
//  Quiz
//
//  Created by Anshul Gupta on 8/23/20.
//  Copyright © 2020 Anshul Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var questionText: UILabel!
    
    @IBOutlet weak var Choice1: UIButton!
    @IBOutlet weak var Choice2: UIButton!
    @IBOutlet weak var Choice3: UIButton!
    
    @IBOutlet weak var Progress: UIProgressView!
    
    var quizManager = QuizManager()
    var change = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        Progress.progress = 0.0;
    }

    @IBAction func answerSelected(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let check = quizManager.checkAnswer(userAnswer)
        
        if check{
            sender.backgroundColor = UIColor.green;
        }
        else {
            sender.backgroundColor = UIColor.red;
        }
        
        quizManager.nextQuestion()

        
        Timer.scheduledTimer(timeInterval:0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    @objc func updateUI(){
                
        questionText.text = quizManager.checkQuestion()
        Progress.progress = quizManager.checkProgress()
        Score.text = "Score: \(quizManager.checkScore())"
        
        Choice1.backgroundColor = UIColor.clear
        Choice2.backgroundColor = UIColor.clear
        Choice3.backgroundColor = UIColor.clear
        
        Choice1.setTitle(quizManager.checkChoices()[0], for: .normal)
        Choice2.setTitle(quizManager.checkChoices()[1], for: .normal)
        Choice3.setTitle(quizManager.checkChoices()[2], for: .normal)
        
    }

}
