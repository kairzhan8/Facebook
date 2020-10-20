//
//  FeedCell.swift
//  Facebook
//
//  Created by Kairzhan Kural on 10/20/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import UIKit

class FeedCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let profileImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "170418-facebook-f8-zuckerberg-ew-0156p_1ef15710540d3ec2bbabc02e5dba3991.fit-760w")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Mark Zuckerberg"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "December 18 • San Francisco • 〶"
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews() {
        backgroundColor = .white
        
        addSubview(profileImage)
        profileImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        profileImage.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        profileImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        
        addSubview(nameLabel)
        nameLabel.leftAnchor.constraint(equalTo: profileImage.rightAnchor, constant: 12).isActive = true
        nameLabel.topAnchor.constraint(equalTo: profileImage.topAnchor, constant: 6).isActive = true
        
        addSubview(locationLabel)
        locationLabel.leftAnchor.constraint(equalTo: nameLabel.leftAnchor).isActive = true
        locationLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 6).isActive = true
    }
}
