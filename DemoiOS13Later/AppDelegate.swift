//
//  AppDelegate.swift
//  DemoiOS13Later
//
//  Created by Ray on 2020/1/30.
//  Copyright © 2020 Sinyi Realty Inc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        guard #available(iOS 13.0, *) else {
            window = UIWindow(frame: UIScreen.main.bounds)
            window?.backgroundColor = .white
            
            let tabBarController = UITabBarController()
            let vc1 = UIViewController()
            vc1.view.backgroundColor = .systemTeal
            let tabBar1 = UITabBarItem(tabBarSystemItem: .downloads, tag: 0)
            vc1.tabBarItem = tabBar1
            
            let vc2 = UIViewController()
            vc2.view.backgroundColor = .systemPurple
            let tabBar2 = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
            vc2.tabBarItem = tabBar2
            tabBarController.viewControllers = [vc1, vc2]
            
            window?.rootViewController = tabBarController
            window?.makeKeyAndVisible()
            
            print("AppDelegate didFinishLaunchingWithOptions for iOS 12 before")
            return true
        }
        
        print("AppDelegate didFinishLaunchingWithOptions for iOS 13 later")
        return true
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        
        // iOS 12 before 才會進入該方法
        print("AppDelegate applicationWillEnterForeground")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        
        // iOS 12 before 才會進入該方法
        print("AppDelegate applicationDidBecomeActive")
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        
        // iOS 12 before 才會進入該方法
        print("AppDelegate applicationWillResignActive")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
        // iOS 12 before 才會進入該方法
        print("AppDelegate applicationDidEnterBackground")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        
        print("AppDelegate applicationWillTerminate")
    }

    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        
        print("AppDelegate connectingSceneSession")
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        print("AppDelegate didDiscardSceneSessions")
    }

}
