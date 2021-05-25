//
//  PostViewController.swift
//  Navigation
//
//  Created by Valeriya Trofimova on 15.05.2021.
//

import UIKit

class PostViewController: UIViewController {
    
    var myPost = Post()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = myPost.title
    }
}
