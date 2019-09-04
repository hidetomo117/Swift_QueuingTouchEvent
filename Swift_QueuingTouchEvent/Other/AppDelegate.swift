//
//  AppDelegate.swift
//  Swift_QueuingTouchEvent
//
//  Created by hidetomo on 2019/09/04.
//  Copyright © 2019 Hidetomo Masuda. All rights reserved.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        addNotification()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}

private extension AppDelegate {
    
    private func addNotification() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(printMessage(notification:)),
                                               name: .ncTouchesBegan,
                                               object: nil)
    }
    
    @objc
    private func printMessage(notification: Notification) {
        print("called")
    }
}

