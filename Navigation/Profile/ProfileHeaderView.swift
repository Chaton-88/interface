//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Valeriya Trofimova on 21.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private let userImage = UIImageView(image: UIImage(named: "unnamed.jpeg"))
    private let userNickname = UILabel()
    private let userStatus = UILabel()
    private let showStatusButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(userImage)
        addSubview(userNickname)
        addSubview(userStatus)
        addSubview(showStatusButton)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        configureUserImage()
        configureUserNickname()
        configureUserStatus()
        configureShowStatusButton()
    }
    
    func configureUserImage() {
        userImage.frame = CGRect(x: self.safeAreaInsets.right + 16, y: self.safeAreaInsets.top + 16, width: 110, height: 110)
        userImage.layer.borderWidth = 3
        userImage.layer.borderColor = UIColor.white.cgColor
        userImage.layer.cornerRadius = userImage.frame.size.width/2
        userImage.clipsToBounds = true
    }
    
    func configureUserNickname() {
        userNickname.frame = CGRect(x: self.safeAreaInsets.right + 150, y: self.safeAreaInsets.top + 27, width: 100, height: 20)
        userNickname.text = "Incognito"
        userNickname.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        userNickname.textColor = .black
    }
    
    func configureUserStatus() {
        userStatus.frame = CGRect(x: self.safeAreaInsets.right + 150, y: self.safeAreaInsets.top + 16 + userImage.bounds.height + 16 - 34 - userStatus.bounds.height, width: 250, height: 18)
        userStatus.text = "Waiting for something..."
        userStatus.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        userStatus.textColor = .gray
    }
    
    func configureShowStatusButton() {
        showStatusButton.frame = CGRect(x: self.safeAreaInsets.right + 16, y: userImage.frame.maxY + 16, width: self.bounds.width - self.safeAreaInsets.left - self.safeAreaInsets.right - 16 * 2, height: 50)
        showStatusButton.setTitle("Show status", for: .normal)
        showStatusButton.setTitleColor(.white, for: .normal)
        showStatusButton.backgroundColor = .blue
        showStatusButton.layer.cornerRadius = 14
        showStatusButton.layer.shadowOffset.width = 4
        showStatusButton.layer.shadowOffset.height = 4
        showStatusButton.layer.shadowRadius = 4
        showStatusButton.layer.shadowColor = UIColor.black.cgColor
        showStatusButton.layer.shadowOpacity = 0.7
        showStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
        
        @objc func buttonPressed() {
            print(userStatus.text ?? "User status is missing")
        }
}
