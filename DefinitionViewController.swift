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
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthyearLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthyearLabel.text = "BirthYear: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
