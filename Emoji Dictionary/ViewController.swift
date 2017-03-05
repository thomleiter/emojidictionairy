//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Leiter Family on 3/4/17.
//  Copyright © 2017 40° Degrees Media, Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tvDictionary: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tvDictionary.dataSource = self
        tvDictionary.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "💒"
        emoji1.birthYear = 2010
        emoji1.category = "buildings"
        emoji1.definition = "A lovely church"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🤣"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley"
        emoji2.definition = "Laughing histerically"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤠"
        emoji3.birthYear = 2012
        emoji3.category = "Smiley"
        emoji3.definition = "Smiling Cowboy"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤧"
        emoji4.birthYear = 2013
        emoji4.category = "Smiley"
        emoji4.definition = "Blowing your nose"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐒"
        emoji5.birthYear = 2014
        emoji5.category = "Animals"
        emoji5.definition = "Frothy monkey"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🔫"
        emoji6.birthYear = 2015
        emoji6.category = "Objects"
        emoji6.definition = "Green squirt gun"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "💩"
        emoji7.birthYear = 2016
        emoji7.category = "Smiley"
        emoji7.definition = "Smiling poo"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "😎"
        emoji8.birthYear = 2017
        emoji8.category = "Smiley"
        emoji8.definition = "I wear my sunglasses at night"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8]
    }


}

