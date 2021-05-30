//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Valeriya Trofimova on 21.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var setStatusButton: UIButton!
    @IBOutlet weak var statusTextField: UITextField!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureAvatarImageView()
        configureFullNameLabel()
        configureStatusLabel()
        configureSetStatusButton()
        configureStatusTextField()
    }
    
    func configureAvatarImageView() {
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.layer.cornerRadius = avatarImageView.bounds.size.width/2
        avatarImageView.clipsToBounds = true
    }
    func configureFullNameLabel() {
        fullNameLabel.text = "Incognito"
        fullNameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        fullNameLabel.textColor = .black
    }
    func configureStatusLabel() {
        statusLabel.text = "Waiting for something..."
        statusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        statusLabel.textColor = .gray
    }
    
    func configureSetStatusButton() {
        setStatusButton.setTitle("Show status", for: .normal)
        setStatusButton.setTitleColor(.white, for: .normal)
        setStatusButton.backgroundColor = .blue
        setStatusButton.layer.cornerRadius = 14
        setStatusButton.layer.shadowOffset.width = 4
        setStatusButton.layer.shadowOffset.height = 4
        setStatusButton.layer.shadowRadius = 4
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        setStatusButton.layer.shadowOpacity = 0.7
        setStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    func configureStatusTextField() {
        statusTextField.backgroundColor = .white
        statusTextField.textColor = .black
        statusTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        statusTextField.layer.cornerRadius = 12
        statusTextField.layer.borderWidth = 1
        statusTextField.layer.borderColor = UIColor.black.cgColor
        statusTextField.clipsToBounds = true
        statusTextField.placeholder = "Enter the status"
        statusTextField.addTarget(self, action: #selector(statusTextChanged(_ :)), for: .editingChanged)
    }
    
    @objc func buttonPressed() {
        statusLabel.text = "\(statusText)"
    }
    
    private var statusText: String = ""
    
    @objc func statusTextChanged(_ textField: UITextField) {
        statusText = statusTextField.text!
    }
}

