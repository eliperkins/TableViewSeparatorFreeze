//
//  AppDelegate.swift
//  TableViewSeparatorFreeze
//
//  Created by Eli Perkins on 10/17/16.
//  Copyright © 2016 Eli Perkins. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController(style: .plain)
        window?.makeKeyAndVisible()

        return true
    }
}

