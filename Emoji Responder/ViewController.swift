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
        
        // When the app loads we want to initially set the response to whatever 
        // the starting state of feeeling is
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
    
    // When any switch changes value, the onFeelingChange function should be called
    @IBAction func onFeelingChange(_ sender: UISwitch) {
        // Call updateResponse to update the emoji we should respond with
        updateResponse()
    }
    
    // We have the updateReponse() function so this same computation can be done in multiple places.
    // We want to update the emoji response in two situations: (1) when the app loads, and (2)
    // after the user's feelings change. We could have copied and pasted this code into the locations
    // corresponding to those states, better to have a function we can call so this computation is
    // in one place only (e.g., if we want to change it, only make changes in one spot, no concerns
    // about inconsistency).
    func updateResponse() {
        var emojiResponse:String
        
        
        // if we're hungry
        if hungrySwitch.isOn {
            // then suggest pizza
            emojiResponse = "🍕"
            
            // if we're not hungry (logically follows from previous clause) and we're not happy,
            //  and we're are tired
        } else if !happySwitch.isOn && tiredSwitch.isOn {
            // then suggest coffee or a nap
            emojiResponse = "☕️ or 🛌"
            // if we're not hungry, but we are happy
        } else if happySwitch.isOn {
            // give smiley face
            emojiResponse = "😁"
            // For any other set of feeings that does not satisfy the previous conditions
        } else {
            // give peace sign
            emojiResponse = "✌️"
        }
        
        // Assign our chosen response to the user's feelings to the text of the response label
        emojiResponseLabel.text = emojiResponse

    }

}

