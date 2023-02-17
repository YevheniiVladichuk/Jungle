//
//  AppUI.swift
//  Jungle Adventures
//
//  Created by Yevhenii Vladichuk on 11/02/2023.
//

import Foundation
import UIKit

class AppUI: UIView {
    
    let backgroundView: UIImageView = {
        let backgroundView = UIImageView()
        backgroundView.image = UIImage(named: "background.pdf")
        backgroundView.contentMode = .scaleAspectFill
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        return backgroundView
    }()
    
    let vStackView: UIStackView = {
        let vStackView = UIStackView()
        vStackView.axis = .vertical
        
        vStackView.spacing = 10
        vStackView.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 10, right: 0)
        vStackView.isLayoutMarginsRelativeArrangement = true
        vStackView.distribution = .fillProportionally
        
        vStackView.translatesAutoresizingMaskIntoConstraints = false
        return vStackView
    }()
    
    
    let storyTitle: UILabel = {
        let questionLabel = UILabel()
        questionLabel.numberOfLines = 0
        questionLabel.textAlignment = .center
        questionLabel.font = UIFont.systemFont(ofSize: 20)
        questionLabel.text = nil
        
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        return questionLabel
    }()
    
    let firstButton: UIButton = {
        let firstButton = UIButton()
        firstButton.setTitle(nil, for: .normal)
        firstButton.titleLabel?.numberOfLines = 0
        
        firstButton.backgroundColor = #colorLiteral(red: 0.3031629324, green: 0.4441044331, blue: 0.3452704549, alpha: 1)
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        
        firstButton.layer.cornerRadius = 15
        firstButton.layer.borderWidth = 1
        firstButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return firstButton
    }()
    
    let secondButton: UIButton = {
        let secondButton = UIButton()
        secondButton.setTitle(nil, for: .normal)
        secondButton.titleLabel?.numberOfLines = 0
        
        secondButton.backgroundColor = #colorLiteral(red: 0.3006545603, green: 0.4360399842, blue: 0.3461737633, alpha: 1)
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        
        secondButton.layer.cornerRadius = 15
        secondButton.layer.borderWidth = 1
        secondButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return secondButton
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addElements()
    }
    
    func addElements() {
        addSubview(backgroundView)
        addSubview( vStackView)
        vStackView.addArrangedSubview(storyTitle)
        vStackView.setCustomSpacing(220, after: storyTitle)
        vStackView.addArrangedSubview(firstButton)
        vStackView.addArrangedSubview(secondButton)
        
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: topAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            vStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            vStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            vStackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15),
            vStackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor,constant: -15),
            
            firstButton.heightAnchor.constraint(equalToConstant: 80),
            secondButton.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
}
