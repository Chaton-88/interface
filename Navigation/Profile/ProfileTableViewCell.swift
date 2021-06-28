//
//  ProfileTableViewCell.swift
//  Navigation
//
//  Created by Valeriya Trofimova on 28.06.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    
    private let publicationImageView: UIImageView = {
        let publicationImageView = UIImageView()
        publicationImageView.contentMode = .scaleAspectFit
        publicationImageView.backgroundColor = .black
        publicationImageView.toAutoLayout()
        return publicationImageView
    }()
    
    private let autorLabel: UILabel = {
        let autorLabel = UILabel()
        autorLabel.textAlignment = .left
        autorLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        autorLabel.textColor = .black
        autorLabel.numberOfLines = 2
        autorLabel.toAutoLayout()
        return autorLabel
    }()
    
    private let descriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        descriptionLabel.textColor = .systemGray
        descriptionLabel.numberOfLines = 0
        descriptionLabel.toAutoLayout()
        return descriptionLabel
    }()
    
    private let likesLabel: UILabel = {
        let likesLabel = UILabel()
        likesLabel.textAlignment = .left
        likesLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        likesLabel.textColor = .black
        likesLabel.toAutoLayout()
        return likesLabel
    }()
    
    private let viewsLabel: UILabel = {
        let viewsLabel = UILabel()
        viewsLabel.textAlignment = .right
        viewsLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        viewsLabel.textColor = .black
        viewsLabel.toAutoLayout()
        return viewsLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubviews(publicationImageView, autorLabel, descriptionLabel, likesLabel, viewsLabel)
        
        NSLayoutConstraint.activate([
            
            
        ])
    }
}
