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

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(userImage)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        configureFrames()
    }
    
    func configureFrames(){
        userImage.frame = CGRect(x: self.safeAreaInsets.right + 16, y: self.safeAreaInsets.top + 16, width: 110, height: 110)
        userImage.layer.borderWidth = 3
        userImage.layer.borderColor = UIColor.white.cgColor
        userImage.layer.cornerRadius = userImage.frame.size.width/2
        userImage.clipsToBounds = true
    }
}
