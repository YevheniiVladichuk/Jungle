//
//  ViewController.swift
//  Jungle Adventures
//
//  Created by Yevhenii Vladichuk on 11/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    let appUI = AppUI()
    var storyManage = StoryManage()
    
    override func loadView() {
        super.loadView()
        view = appUI
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        appUI.firstButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        appUI.secondButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped(_ sender: UIButton!) {
        
        storyManage.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        appUI.storyTitle.text = storyManage.getTitle()
        appUI.firstButton.setTitle(storyManage.getFirstButtonTitle(), for: .normal)
        appUI.secondButton.setTitle(storyManage.getSecondButtonTitle(), for: .normal)
    }
}
