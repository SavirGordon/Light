//
//  ViewController.swift
//  Light
//
//  Created by 4d on 9/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lightButton: UIButton!
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

    fileprivate func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        }
        else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
}

