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
    private let menuController = MenuController()
    private var isExpanded = false
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHomeController()
        configureMenuController()
    }
    
    // MARK: - Selectors
    
    // MARK: - Helper Functions
    
    func configureHomeController() {
        addChild(homeController)
        homeController.didMove(toParent: self)
        view.addSubview(homeController.view)
        homeController.delegate = self
    }
    
    func configureMenuController() {
        addChild(menuController)
        menuController.didMove(toParent: self)
        view.insertSubview(menuController.view, at: 0)
    }
    
    func animateMenu(shouldExpand: Bool) {
        if shouldExpand {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.homeController.view.frame.origin.x = self.view.frame.width - 80
            }, completion: nil)
        } else {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.homeController.view.frame.origin.x = 0
            }, completion: nil)
        }
    }
}

extension ContainerController: HomeControllerDelegate {
    func handleMenuToggle() {
        isExpanded.toggle()
        print("DEBUG: Is expanded is \(isExpanded)")
        animateMenu(shouldExpand: isExpanded)
    }
}
