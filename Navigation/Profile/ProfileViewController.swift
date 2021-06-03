//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Valeriya Trofimova on 21.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let myButton: UIButton = {
        let myButton = UIButton()
        myButton.setTitle("My button", for: .normal)
        myButton.setTitleColor(.white, for: .normal)
        myButton.backgroundColor = .blue
        return myButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(myButton)
        myButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0),
            myButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0),
            myButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
