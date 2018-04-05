//
//  MainTabBarController.swift
//  timer
//
//  Created by Administrador on 6/02/18.
//  Copyright © 2018 Jose Diaz. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Utils.removeTabbarItemsText(tabBar: self.tabBar)
    }
}
