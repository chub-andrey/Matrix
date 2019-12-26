//
//  AppDelegate.swift
//  Matrix
//
//  Created by AndUser on 12/25/19.
//  Copyright © 2019 Andrey Chub. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    var delegates: [ApplicationDelegate] {
        return storedDelegates
    }
    
    let storedDelegates: [ApplicationDelegate] = [NavigationApplicationDelegate()]

        func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        delegates.forEach { delegate in
            delegate.application(application, didFinishLaunchingWithOptions: launchOptions)
        }
        
        return true
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        delegates.forEach { delegate in
            delegate.applicationWillTerminate(application)
        }
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        delegates.forEach { delegate in
            delegate.applicationWillEnterForeground(application)
        }
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        delegates.forEach { delegate in
            delegate.applicationDidEnterBackground(application)
        }
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        delegates.forEach { delegate in
            delegate.applicationDidBecomeActive(application)
        }
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        delegates.forEach { delegate in
            delegate.applicationWillResignActive(application)
        }
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        delegates.forEach { delegate in
            delegate.applicationDidRegisterForRemoteNotificationsWithDeviceToken(deviceToken)
        }
    }
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        delegates.forEach { delegate in
            delegate.applicationDidFailToRegisterForRemoteNotificationsWithError(error)
        }
    }
}

