//
//  ContainerController.swift
//  UberClone
//
//  Created by Robert Guerra on 6/11/20.
//  Copyright © 2020 Robert Guerra. All rights reserved.
//

import UIKit

// Container Controller comment

class ContainerController: UIViewController {
    // MARK: - Properties
    
    private let homeController = HomeController()
    private let menuControlle = MenuController()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHomeController()
    }
    
    // MARK: - Selectors
    
    // MARK: - Helper Functions
    
    func configureHomeController() {
        addChild(homeController)
        homeController.didMove(toParent: self)
        view.addSubview(homeController.view)
    }
    
    func configureMenuController() {
        
    }
}
