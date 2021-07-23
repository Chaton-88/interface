//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Valeriya Trofimova on 09.07.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    var cell: PhotosCell? {
        didSet {
            photoLabel.text = cell?.title
            photoOneImageView.image = UIImage(named: cell?.imageOne ?? "the image is missing")
            photoTwoImageView.image = UIImage(named: cell?.imageTwo ?? "the image is missing")
            photoThreeImageView.image = UIImage(named: cell?.imageThree ?? "the image is missing")
            photoFourImageView.image = UIImage(named: cell?.imageFour ?? "the image is missing")
            arrowImageView.image = UIImage(systemName: cell?.imageArrow ?? "the image is missing")
        }
    }

    private let photoLabel: UILabel = {
        let photoLabel = UILabel()
        photoLabel.textAlignment = .left
        photoLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        photoLabel.textColor = .black
        photoLabel.toAutoLayout()
        return photoLabel
    }()
    
    private let photoOneImageView: UIImageView = {
        let photoOneImageView = UIImageView()
        photoOneImageView.clipsToBounds = true
        photoOneImageView.layer.cornerRadius = 6
        photoOneImageView.toAutoLayout()
        return photoOneImageView
    }()
    
    private let photoTwoImageView: UIImageView = {
        let photoTwoImageView = UIImageView()
        photoTwoImageView.clipsToBounds = true
        photoTwoImageView.layer.cornerRadius = 6
        photoTwoImageView.toAutoLayout()
        return photoTwoImageView
    }()
    
    private let photoThreeImageView: UIImageView = {
        let photoThreeImageView = UIImageView()
        photoThreeImageView.clipsToBounds = true
        photoThreeImageView.layer.cornerRadius = 6
        photoThreeImageView.toAutoLayout()
        return photoThreeImageView
    }()
    
    private let photoFourImageView: UIImageView = {
        let photoFourImageView = UIImageView()
        photoFourImageView.clipsToBounds = true
        photoFourImageView.layer.cornerRadius = 6
        photoFourImageView.toAutoLayout()
        return photoFourImageView
    }()
    
    private let arrowImageView: UIImageView = {
        let allowImageView = UIImageView()
        allowImageView.tintColor = .black
        allowImageView.toAutoLayout()
        return allowImageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubviews(photoLabel, photoOneImageView, photoTwoImageView, photoThreeImageView, photoFourImageView, arrowImageView)
        
        NSLayoutConstraint.activate ([
            photoLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            photoLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            photoLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            photoLabel.bottomAnchor.constraint(equalTo: photoOneImageView.topAnchor, constant: -12),
            
            photoOneImageView.topAnchor.constraint(equalTo: photoLabel.bottomAnchor, constant: 12),
            photoOneImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            photoOneImageView.trailingAnchor.constraint(equalTo: photoTwoImageView.leadingAnchor, constant: -8),
            photoOneImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            photoOneImageView.widthAnchor.constraint(equalToConstant: CGFloat((contentView.frame.width - 48)/4)),
            photoOneImageView.heightAnchor.constraint(equalTo: photoOneImageView.widthAnchor),
            
            photoTwoImageView.topAnchor.constraint(equalTo: photoLabel.bottomAnchor, constant: 12),
            photoTwoImageView.leadingAnchor.constraint(equalTo: photoOneImageView.trailingAnchor, constant: 8),
            photoTwoImageView.trailingAnchor.constraint(equalTo: photoThreeImageView.leadingAnchor, constant: -8),
            photoTwoImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            photoTwoImageView.heightAnchor.constraint(equalTo: photoOneImageView.heightAnchor),
            photoTwoImageView.widthAnchor.constraint(equalTo: photoOneImageView.widthAnchor),
            
            
            photoThreeImageView.topAnchor.constraint(equalTo: photoLabel.bottomAnchor, constant: 12),
            photoThreeImageView.trailingAnchor.constraint(equalTo: photoFourImageView.leadingAnchor, constant: -8),
            photoThreeImageView.leadingAnchor.constraint(equalTo: photoTwoImageView.trailingAnchor, constant: 8),
            photoThreeImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            photoThreeImageView.heightAnchor.constraint(equalTo: photoOneImageView.heightAnchor),
            photoThreeImageView.widthAnchor.constraint(equalTo: photoOneImageView.widthAnchor),
            
            photoFourImageView.topAnchor.constraint(equalTo: photoLabel.bottomAnchor, constant: 12),
            photoFourImageView.leadingAnchor.constraint(equalTo: photoThreeImageView.trailingAnchor, constant: 8),
            photoFourImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            photoFourImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            photoFourImageView.heightAnchor.constraint(equalTo: photoOneImageView.heightAnchor),
            photoFourImageView.widthAnchor.constraint(equalTo: photoOneImageView.widthAnchor),
            
            arrowImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            arrowImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            arrowImageView.bottomAnchor.constraint(equalTo: photoFourImageView.topAnchor, constant: -12)
        ])
    }
}
