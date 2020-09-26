//
//  MainNavigationController.swift
//  TimAudible
//
//  Created by Tim on 25/09/2020.
//  Copyright © 2020 Tim. All rights reserved.
//

import UIKit


class MainNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Main Nav Controller")
        view.backgroundColor = .white
        
        if isLoggedIn() {
            let homeController = HomeController()
            viewControllers = [homeController]
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
    }
    
    fileprivate func isLoggedIn() -> Bool {
        return UserDefaults.standard.isLoggedIn()
    }
    
    @objc func showLoginController() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: {
            print("Mad oh!")
        })
    }
}



