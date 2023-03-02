//
//  ViewController.swift
//  Timer Application
//
//  Created by Abdüssamed Söğüt on 2.03.2023.
//

import UIKit

class ViewController: UIViewController {

    var timer:Timer?
    var counter1 = 1
    var counter2 = 5
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = ""
    }


    @IBAction func start(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countBackward), userInfo: nil, repeats: true)
        
    }
    
    @objc func countForward() {
        resultLabel.text = String(counter1)
        counter1 += 1
        
        if counter1 > 6 {
            timer?.invalidate()
            resultLabel.text = "Time is up"
            counter1 = 1
        }
    }
    
    
    @objc func countBackward() {
        resultLabel.text = String(counter2)
        counter2 -= 1
        
        if counter2 < 0 {
            timer?.invalidate()
            resultLabel.text = "Time is up"
            counter2 = 5
        }
    }
    
}

