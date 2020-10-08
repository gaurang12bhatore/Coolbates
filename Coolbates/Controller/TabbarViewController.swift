//
//  TabbarViewController.swift
//  Coolbates
//
//  Created by samosys on 25/09/20.
//  Copyright © 2020 samosys. All rights reserved.
//

import UIKit

class TabbarViewController: UITabBarController {

    fileprivate lazy var defaultTabBarHeight = { tabBar.frame.size.height }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        UITabBar.appearance().barTintColor = UIColor(red: 232.0/255, green: 195.0/255, blue: 68.0/255, alpha: 1.0)
    }
    
    override func viewWillLayoutSubviews() {
        
        super.viewWillLayoutSubviews()

        let newTabBarHeight = defaultTabBarHeight
        print("Tab Height",newTabBarHeight)
        var newFrame = tabBar.frame
        newFrame.size.height = newTabBarHeight
        newFrame.origin.y = view.frame.size.height - newTabBarHeight

        tabBar.frame = newFrame
    }

    

}
