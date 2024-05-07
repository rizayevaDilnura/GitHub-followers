//
//  FollowerListVC.swift
//  project from google
//
//  Created by Dilnura Rizaeva on 12.04.2024.
//

import UIKit

class FollowerListVC: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        view.backgroundColor = .systemBackground
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true

        NetworkManager.shared.getFollowers(for: username, page: 1) { (followers, errorMessage) in
            guard let followers = followers else {
                self.presentGFAlertOnMainThread(title: "Kinda errror", message: errorMessage?.rawValue!, buttonTitle: "OK")
                return
            }

            print("Followers.count = \(followers.count)")
            print(followers)

        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)

    }


}
