//
//  ViewController.swift
//  Emoji Responder
//
//  Created by Gross, Paul on 8/9/17.
//  Copyright © 2017 Maryville App Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateResponse()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var emojiResponseLabel: UILabel!
    
    @IBOutlet weak var happySwitch: UISwitch!
    @IBOutlet weak var tiredSwitch: UISwitch!
    @IBOutlet weak var hungrySwitch: UISwitch!
    
    @IBAction func onFeelingChange(_ sender: UISwitch) {
        updateResponse()
    }
    
    func updateResponse() {
        var emojiResponse:String
        
        if hungrySwitch.isOn {
            emojiResponse = "🍕"
        } else if !happySwitch.isOn && tiredSwitch.isOn {
            emojiResponse = "☕️ or 🛌"
        } else if happySwitch.isOn {
            emojiResponse = "😁"
        } else {
            emojiResponse = "✌️"
        }
        
        emojiResponseLabel.text = emojiResponse
    }

}

