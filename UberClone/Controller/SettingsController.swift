//
//  SettingsController.swift
//  UberClone
//
//  Created by Robert Guerra on 6/15/20.
//  Copyright © 2020 Robert Guerra. All rights reserved.
//

import UIKit

private let reuseIdentifier = "LocationCell"

class SettingsController: UITableViewController {
     
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureNavigationBar()
    }
    
    // MARK: - Selectors
    
    @objc func handleDismissal() {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: Helper Functions
    
    func configureTableView() {
        tableView.rowHeight = 60
        tableView.register(LocationCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.backgroundColor = .white
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "Settings"
        navigationController?.navigationBar.barTintColor = .backgroundColor
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_2x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismissal))
    }
}
