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
        
        
        // create a MCItemsViewController
        let qtMainView = QuickTipsViewController()
        
        
        self.window!.rootViewController = qtMainView
        
        
        // create an instance of a UINavigationController
        // its stack contains only itemsViewController
//        UINavigationController *navController = [[UINavigationController alloc]
//        initWithRootViewController:itemsViewController];
//        
//        // place navigation controllers in view hierarchy and remove itemsViewController
//        // as the root view controller
//        self.window.rootViewController = navController;
//        
//        // place the MCItemsViewController's table view in the window hierarchy
//        //    self.window.rootViewController = itemsViewController;
//        

        
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        
        return true
    }


}

