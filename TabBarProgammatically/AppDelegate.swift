//
//  AppDelegate.swift
//  TabBarProgammatically
//
//  Created by varun bhola on 15/03/18.
//  Copyright © 2018 varun15bhola. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //window = UIWindow(frame: UIScreen.main.bounds)
        
        let nav1 = UINavigationController()
        let first = ViewController(nibName: nil, bundle: nil)
        nav1.viewControllers = [first]
        nav1.view.backgroundColor = #colorLiteral(red: 0.889431417, green: 0.7269948125, blue: 0.7230418324, alpha: 1)
        nav1.tabBarItem.image = UIImage(named : "icons8-spoon-26")
        nav1.tabBarItem.selectedImage = UIImage(named: "icons8-spoon-26")
        nav1.tabBarItem.title = "Main"
        
        let second = favoriteVC(nibName: nil, bundle: nil)
        let nav2 = UINavigationController()
        nav2.viewControllers = [second]
        nav2.view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        nav2.tabBarItem.image = UIImage(named : "icons8-star-26")
        nav2.tabBarItem.selectedImage = UIImage(named: "icons8-star-26")
        nav2.tabBarItem.title = "Favorite"
        
        let third = historyVC(nibName: nil, bundle: nil)
        let nav3 = UINavigationController()
        nav3.viewControllers = [third]
        nav3.view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        nav3.tabBarItem.image = UIImage(named : "icons8-time-machine-24")
        nav3.tabBarItem.selectedImage = UIImage(named: "icons8-time-machine-24")
        nav3.tabBarItem.title = "History"
        
        let fourth = historyVC(nibName: nil, bundle: nil)
        let nav4 = UINavigationController()
        nav4.viewControllers = [fourth]
        nav4.view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        nav4.tabBarItem.image = UIImage(named : "icons8-downloading-updates-26")
        nav4.tabBarItem.selectedImage = UIImage(named: "icons8-downloading-updates-26")
        nav4.tabBarItem.title = "History"
        
        
        let tabs = UITabBarController()
        tabs.viewControllers = [nav1, nav2,nav3,nav4]
        
        self.window!.rootViewController = tabs;
        self.window?.makeKeyAndVisible();
        return true

    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

