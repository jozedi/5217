//
//  AppDelegate.swift
//  timer
//
//  Created by Jose Diaz on 3/02/18.
//  Copyright © 2018 Jose Diaz. All rights reserved.
//

import UIKit
import AVFoundation
import Firebase
import UserNotifications
import UserNotificationsUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        
        // Preventing Video From Muting Other Audio On Device
        if #available(iOS 10.0, *) {
            try? AVAudioSession.sharedInstance().setCategory(
                AVAudioSessionCategoryAmbient,
                mode: AVAudioSessionModeDefault
            )
            try? AVAudioSession.sharedInstance().setActive(true)
        }
        
        //Si ya vio la intro redireccionar al main
        if UserDefaults.standard.bool(forKey: Constants.Preferences.PREF_KEY_VIEWED_INTRO) {
            let mainViewController = UIStoryboard(name: Constants.Storyboard.MAIN, bundle: nil).instantiateViewController(withIdentifier: Constants.ViewControllers.MAIN_TABBAR_VIEW_CONTROLLER) as! MainTabBarController
            window?.rootViewController = mainViewController
        } else {
            let mainViewController = UIStoryboard(name: Constants.Storyboard.INTRO, bundle: nil).instantiateViewController(withIdentifier: Constants.ViewControllers.INTRO_ROOT_VIEW_CONTROLLER) as! IntroRootViewController
            window?.rootViewController = mainViewController
        }
        
        registerNotification()
        
        return true
    }
    
    func registerNotification() {
        let center = UNUserNotificationCenter.current()
        
        let viewAction = UNNotificationAction(identifier: "viewActionId", title: "View", options: [.foreground])
        let snoozeAction = UNNotificationAction(identifier: "snoozeActionId", title: "Snooze", options: [])
        let deleteAction = UNNotificationAction(identifier: "deleteActionId", title: "Delete", options: [.destructive])
        let category = UNNotificationCategory(identifier: "categoryId", actions: [viewAction, snoozeAction, deleteAction], intentIdentifiers: [], options: [])
        
        center.setNotificationCategories([category])
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
