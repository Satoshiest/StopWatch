//
//  ViewController.swift
//  counter
//
//  Created by Satoshi on 2021-05-31.
//

import UIKit

class ViewController: UIViewController {
    
    var is_counting:Bool = false
    var timer = Timer()
    var count:Float = 0.0

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func button(_ sender: Any) {
        if is_counting {
            button.setTitle("Start", for: .normal)
            timer.invalidate()
            count = 0.00
            is_counting = false
        }
        else if !is_counting{
            button.setTitle("Stop", for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector (counter), userInfo: nil, repeats: true)
            is_counting = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc func counter() -> Void {
        count += 0.01
        countLabel.text = "Counter: \(String(format:"%.2f", count))"
    }
}

