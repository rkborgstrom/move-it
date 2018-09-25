//
//  AppDelegate.swift
//  Move It.
//
//  Created by Ryan Borgstrom on 9/13/18.
//  Copyright © 2018 Ryan Borgstrom. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift
import GoogleMaps
import LocalAuthentication


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        GMSServices.provideAPIKey("AIzaSyDGFnplXdlgOCfsCd2j3Rp0r5n8dycqKkc")
        IQKeyboardManager.shared.enable = true
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

