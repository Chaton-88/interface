//
//  InfoViewController.swift
//  Navigation
//
//  Created by Valeriya Trofimova on 16.05.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tap(_ sender: Any) {
        let vc = UIAlertController(title: "Attention!", message: "The photo editor requests access to your camera. Allow?", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) {
            _ in
            print("The user confirmed access")
        }
        
        let noAction = UIAlertAction(title: "NO", style: .cancel) {
            _ in
            print("User refused access")
        }
        
        vc.addAction(okAction)
        vc.addAction(noAction)
        
        self.present(vc, animated: true, completion: nil)
    }
}

