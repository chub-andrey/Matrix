//
//  ApplicationDelegate.swift
//  Matrix
//
//  Created by AndUser on 12/25/19.
//  Copyright © 2019 Andrey Chub. All rights reserved.
//

import UIKit

protocol ApplicationDelegate: class {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?)
    func applicationWillTerminate(_ application: UIApplication)
    
    func applicationWillEnterForeground(_ application: UIApplication)
    func applicationDidEnterBackground(_ application: UIApplication)
    
    func applicationDidBecomeActive(_ application: UIApplication)
    func applicationWillResignActive(_ application: UIApplication)
    func applicationDidRegisterForRemoteNotificationsWithDeviceToken(_ deviceToken: Data)
    func applicationDidFailToRegisterForRemoteNotificationsWithError(_ error: Error)
}

extension ApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {}
    func applicationWillTerminate(_ application: UIApplication) {}

    func applicationWillEnterForeground(_ application: UIApplication) {}
    func applicationDidEnterBackground(_ application: UIApplication) {}

    func applicationDidBecomeActive(_ application: UIApplication) {}
    func applicationWillResignActive(_ application: UIApplication) {}
    func applicationDidRegisterForRemoteNotificationsWithDeviceToken(_ deviceToken: Data) {}
    func applicationDidFailToRegisterForRemoteNotificationsWithError(_ error: Error) {}
}
