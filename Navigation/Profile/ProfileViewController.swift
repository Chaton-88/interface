//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Valeriya Trofimova on 21.05.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private let tableView = UITableView(frame: .zero, style: .grouped)
    private let identifier = "idCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        
        tableView.toAutoLayout()
        tableView.dataSource = self
        tableView.register(ProfileTableViewCell.self, forCellReuseIdentifier: identifier)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

// MARK: UITableViewDataSource
extension ProfileViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: ProfileTableViewCell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath) as! ProfileTableViewCell
        cell.post = Section.publication[indexPath.section].post[indexPath.row]
        
        return cell
    }

}
