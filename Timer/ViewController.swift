//
//  ViewController.swift
//  Timer
//
//  Created by Émerson M Luz on 23/10/22.
//

import UIKit

class ViewController: UIViewController {

    var timerArroud = 0
    var timer = Timer()
    var pauseTime = false
    
    
    @IBOutlet weak var lbTime: UILabel!
    @IBOutlet weak var startTime: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func startTime(_ sender: Any) {
        timerArroud += 1
        lbTime.text = String(timerArroud)
        if pauseTime == false {
            Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: startTime(_:))
            startTime.isEnabled = false
        } else {
            pauseTime = false
        }
    }
    
    
    @IBAction func pauseTime(_ sender: Any) {
        pauseTime = true
        startTime.isEnabled = true
    }
    
    
    @IBAction func resetTime(_ sender: Any) {
        pauseTime = true
        timerArroud = -1
        lbTime.text = "0"
        startTime.isEnabled = true
    }
    
}

