//
//  LNFTabBarController.swift
//  iOS_Swift_Learning
//
//  Created by mrliu on 2020/12/6.
//

import UIKit

class LNFTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        self.view.backgroundColor = UIColor.white
        
        let firstVc = UIViewController.init()
        firstVc.navigationItem.title = "收藏"
        firstVc.view.backgroundColor = UIColor.lightGray
        let firstNavi = UINavigationController.init(rootViewController: firstVc)
        firstNavi.tabBarItem = UITabBarItem.init(tabBarSystemItem: UITabBarItem.SystemItem.favorites, tag: 100)
        let secondVc = UIViewController.init()
        secondVc.navigationItem.title = "更多"
        secondVc.view.backgroundColor = UIColor.systemBlue
        let secondNavi = UINavigationController.init(rootViewController: secondVc)
        secondNavi.tabBarItem = UITabBarItem.init(tabBarSystemItem: UITabBarItem.SystemItem.more, tag: 101)
        self.viewControllers = [firstNavi, secondNavi]
    }
}
