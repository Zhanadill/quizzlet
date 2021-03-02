//
//  ViewController.swift
//  Quizzlet2
//
//  Created by Жанадил on 11/30/20.
//  Copyright © 2020 Жанадил. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var button1: buttonBorder!
    @IBOutlet weak var button2: buttonBorder!
    @IBOutlet weak var button3: buttonBorder!
    
    var qqq = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aaa()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        if qqq.quizBrainFunc(aaa: sender.currentTitle!){
            print(1)
            sender.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }else{
            print(0)
            sender.backgroundColor = #colorLiteral(red: 0.6643349528, green: 0, blue: 0.08385483176, alpha: 1)
        }
        
        qqq.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(aaa), userInfo: nil, repeats: false)
    }
    
    @objc func aaa(){
        questionLabel.text = qqq.getQuestionText()
        button1.setTitle(qqq.getButtonText(aaa: 0), for: .normal)
        button2.setTitle(qqq.getButtonText(aaa: 1), for: .normal)
        button3.setTitle(qqq.getButtonText(aaa: 2), for: .normal)
        progress.progress = qqq.getProgress()
        button1.backgroundColor = UIColor.clear
        button2.backgroundColor = UIColor.clear
        button3.backgroundColor = UIColor.clear
        scoreLabel.text = "Score is \(qqq.getScore())"
        
    }
}

