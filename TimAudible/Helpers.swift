//
//  Helpers.swift
//  TimAudible
//
//  Created by Tim on 26/09/2020.
//  Copyright © 2020 Tim. All rights reserved.
//

import UIKit

extension UserDefaults {
    
    enum userDefaultKeys : String {
        case isLoggedIn
    }
    
    func setIsLoggedIn(value: Bool) {
        set(value, forKey: userDefaultKeys.isLoggedIn.rawValue)
        synchronize()
    }
    
    func isLoggedIn()-> Bool {
        bool(forKey: userDefaultKeys.isLoggedIn.rawValue)
    }
}
