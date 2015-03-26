//
//  AppDelegate.swift
//  QuickTips
//
//  Created by Matthew Chupp on 3/25/15.
//  Copyright (c) 2015 MattChupp. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
    
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        
        // create a ViewControllers
        let qtMainView = QuickTipsViewController()
        let dtMainView = DeliveryTipsViewController()
        
        qtMainView.tabBarItem.title = "Restaurant"
        dtMainView.tabBarItem.title = "Delivery"
        
        // create tabBarController and load the 2 views in
        var tabBarController = UITabBarController()
        tabBarController.viewControllers = [qtMainView, dtMainView];
        tabBarController.view.backgroundColor = UIColor.clearColor()
        
        // root view
        self.window!.rootViewController = tabBarController
        
        
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        
        return true
    }


}

