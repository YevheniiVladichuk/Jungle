//
//  StoryManage.swift
//  Jungle Adventures
//
//  Created by Yevhenii Vladichuk on 14/02/2023.
//

import Foundation

struct StoryManage {
    
    var storyNumber = 0
    
    let storiesArray = [
        // main line
        Story(title: "You went to the impenetrable jungle of Bolivia in search of exotic adventures. You stumbled upon a fork that is not on the map.", firstChoice: "Take a left", firstChoicePoint: 1, secondChoice: "Take a right", secondChoicePoint: 11),
        Story(title: "You see a jaguar.", firstChoice: "Run", firstChoicePoint: 3, secondChoice: "Attack", secondChoicePoint: 2),
        Story(title: "It is foolish to fight with a jaguar without a weapon. You are killed.", firstChoice: "I will try again", firstChoicePoint: 0, secondChoice: "It was a dream" , secondChoicePoint: 0),
        Story(title: "A jaguar is chasing you through the jungle. You turn to the right and see a precipice in front of you. You have run along the river,  maybe there might be a lake at the bottom of precipice.", firstChoice: "Jump", firstChoicePoint: 4, secondChoice: "Turn around and attack the tiger.", secondChoicePoint: 2),
        Story(title: "Luckily, there is a deep lake at the bottom of the precipice. You swim up to the surface and make your way to the beach, where you see a car with people.", firstChoice: "Ask for help", firstChoicePoint: 5, secondChoice: "Run into the deep of the jungle", secondChoicePoint: 6),
        Story(title: "It was the security of a secret narco laboratory in the jungle. They don't like strangers. They killed you.", firstChoice: "Wake up", firstChoicePoint: 0, secondChoice: "Try again", secondChoicePoint: 0),
        Story(title: "You are lost in the jungle.", firstChoice: "Start to panic", firstChoicePoint: 7, secondChoice: "Don't lose hope", secondChoicePoint: 8),
        Story(title: "Panic is not the best friend in a complicated situation. Unfortunately, you did not survive in the Amazon jungle.", firstChoice: "Try again", firstChoicePoint: 0, secondChoice: "No, no, noooo !!!", secondChoicePoint: 0),
        Story(title: "You found a settlement of the Indians of the Amazon jungle, in which there was an expedition of volunteers from the UK. They helped you to get home to London.", firstChoice: "Write the book about Bolivian jungle adventures.", firstChoicePoint: 9, secondChoice: "Ride back to the jungle", secondChoicePoint: 0),
        Story(title: "Your book has become a bestseller. You are rich", firstChoice: "What if I...", firstChoicePoint: 0, secondChoice: "Finish", secondChoicePoint: 10),
        Story(title: "You lived to a ripe old age, rich and successful.", firstChoice: "Truy again", firstChoicePoint: 0, secondChoice: "What if I...", secondChoicePoint: 0),
        // second line
        Story(title: "It looks like you are following the map route.", firstChoice: "Move forward.", firstChoicePoint: 12, secondChoice: "Turn off the route", secondChoicePoint: 1),
        Story(title: "You're running out of water. The map indicates that there must be a mountain spring somewhere nearby.", firstChoice: "Turn from the route in search of water.", firstChoicePoint: 13, secondChoice: "Move forward", secondChoicePoint: 1),
        Story(title: "You replenished the water supply.", firstChoice: "Return to route", firstChoicePoint: 1, secondChoice: "Try another way", secondChoicePoint: 1),
    ]
    
    func getTitle()-> String {
        return storiesArray[storyNumber].title
    }
    
    func getFirstButtonTitle() -> String {
        return storiesArray[storyNumber].firstChoice
    }
    
    func getSecondButtonTitle() -> String {
        return storiesArray[storyNumber].secondChoice
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = storiesArray[storyNumber]
        
        if userChoice == currentStory.firstChoice {
            storyNumber = currentStory.firstChoicePoint
        } else {
            storyNumber = currentStory.secondChoicePoint
        }
    }
    
}
