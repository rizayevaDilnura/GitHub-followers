//
//  GFAvatarImageView.swift
//  project from google
//
//  Created by Dilnura Rizaeva on 21.05.2024.
//

import UIKit

class GFAvatarImageView: UIImageView {

   let placeholder = UIImage(named: "gh-logo")!

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholder
        translatesAutoresizingMaskIntoConstraints = false
    }

}
