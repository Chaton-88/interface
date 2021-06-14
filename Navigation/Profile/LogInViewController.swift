//
//  containerViewController.swift
//  Navigation
//
//  Created by Valeriya Trofimova on 06.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    private let logInView = LogInView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        
        logInView.backgroundColor = .white
        
        view.addSubview(scrollView)
        scrollView.addSubview(logInView)
        
        configureConstraints()
    }
    
    func configureConstraints() {
        
        scrollView.toAutoLayout()
        logInView.toAutoLayout()
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            logInView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            logInView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            logInView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            logInView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            logInView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
        ])
    }
}

extension UIView {
    func toAutoLayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}
