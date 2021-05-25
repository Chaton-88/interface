//
//  FeedViewController.swift
//  Navigation
//
//  Created by Valeriya Trofimova on 15.05.2021.
//

import UIKit

class FeedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "showPost" else {
            return
        }
        
        guard let vc = segue.destination as? PostViewController else {
            return
        }
        
        vc.myPost.title = "Photo editor"
    }
}


