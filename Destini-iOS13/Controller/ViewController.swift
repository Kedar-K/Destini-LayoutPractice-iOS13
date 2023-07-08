//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.currentTitle == storyBrain.getButton1Title(){
            
        }
    }
    
    func loadUI(){
        storyLabel.text = storyBrain.getText()
        choice1Button.setTitle(storyBrain.getButton1Title(), for: .normal)
        choice2Button.setTitle(storyBrain.getButton2Title(), for: .normal)
        
    }
    
}

