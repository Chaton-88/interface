//
//  LogInViewController.swift
//  Navigation
//
//  Created by Valeriya Trofimova on 06.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    private var loginView = LogInView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loginView)
    }
}
