//
//  ViewController.swift
//  swiftStarter
//
//  Created by Fillan Lee on 4/16/20.
//  Copyright © 2020 Fillan Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var hour = 00
    var min = 00
    var sec = 00
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
        
        timerLabel.text = "\(hour):\(min):\(sec)"
        timerLabel.textAlignment = .center
    }
    
    @objc func startTimerr() {
        
//        sec = sec + 1
        if (sec == 60){
            min += 1
            sec = 0
            
            timerLabel.text =  "\(hour):\(min):\(sec)"
        }
        if (min == 60) {
            hour += 1
            min = 0
            timerLabel.text =  "\(hour):\(min):\(sec)"
            
        }
        if (sec<60) {
            sec += 1
            timerLabel.text =  "\(hour):\(min):\(sec)"
        }
        
//        timerLabel.text =  "\(hour):\(min).\(sec)"
    }
    

    @IBAction func startTime(_ sender: Any) {
      timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(startTimerr), userInfo: nil, repeats: true)

    }
    @IBAction func stopTimer(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        hour = 00
        min = 00
        sec = 00
        timerLabel.text =  "\(hour):\(min):\(sec)"
    }
}

