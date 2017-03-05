//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Leiter Family on 3/4/17.
//  Copyright © 2017 40° Degrees Media, Ltd. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "💒" {
            definitionLabel.text = "A lovely church"
        }
        if emoji == "🤣" {
            definitionLabel.text = "Laughing histerically"
        }
        if emoji == "🤠" {
            definitionLabel.text = "Smiling Cowboy"
        }
        if emoji == "🤧" {
            definitionLabel.text = "Blowing your nose"
        }
        if emoji == "🐒" {
            definitionLabel.text = "Frothy monkey"
        }
        if emoji == "🔫" {
            definitionLabel.text = "Green squirt gun"
        }
        if emoji == "💩" {
            definitionLabel.text = "Smiling poo"
        }
        if emoji == "😎" {
            definitionLabel.text = "I wear my sunglasses at night"
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
