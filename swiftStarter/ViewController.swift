//
//  ViewController.swift
//  swiftStarter
//
//  Created by Fillan Lee on 4/16/20.
//  Copyright © 2020 Fillan Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    var timer: Timer!
    
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var stopBtn: UIButton!
    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet var timerLabel: UILabel!
    
//    func startBtn.backgroundColor = red
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startBtn.backgroundColor = .systemGreen
        startBtn.setTitleColor(.systemGray, for: .normal)
        startBtn.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        
        stopBtn.backgroundColor = .systemRed
        stopBtn.setTitleColor( .systemGray, for: .normal)
        stopBtn.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
            
        resetBtn.backgroundColor = .systemBlue
        resetBtn.setTitleColor(.systemGray, for: .normal)
        resetBtn.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        
        timerLabel.text = "\(counter)"
        timerLabel.textAlignment = .center
    }
    
    @objc func startTimerr() {
        counter = counter + 1
        timerLabel.text =  "\(counter)"
    }
    

    @IBAction func startTime(_ sender: Any) {
      timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(startTimerr), userInfo: nil, repeats: true)

    }
    @IBAction func stopTimer(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        counter = 0
        timerLabel.text =  "\(counter)"
    }
}

