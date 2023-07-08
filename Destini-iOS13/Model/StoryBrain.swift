//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct StoryBrain {
    var storyNumber = 0
    
    var stories = [
        Story("You see a fork in the road.","Take a left","Take a right"),
        Story("You see a tiger.","Shout","dead"),
        Story("You find a treasure chest.","open","close"),
    ]
    
    func getText() -> String {
        return stories[storyNumber].title
    }
    
    func getButton1Title() -> String {
        return stories[storyNumber].choice1
    }
    
    func getButton2Title() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextQuestion(choice: String) -> Void {
        if choice == stories[storyNumber].choice1 {
            storyNumber += 1
        }else{
            storyNumber += 2
        }
    }

}



