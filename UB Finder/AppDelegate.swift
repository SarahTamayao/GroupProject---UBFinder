//
//  AppDelegate.swift
//  UB Finder
//
//  Created by Eric Xie  on 4/13/22.
//

import UIKit
import Parse
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    // AppDelegate.swift

    // Don't forget to install Parse pods!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // --- Copy this only
        
        let parseConfig = ParseClientConfiguration {
                $0.applicationId = "tBOeoSD0EaGLxmmwNKtAC4LbGClBKexi0ugZZPcp" // <- UPDATE
                $0.clientKey = "ceYoIzWBtbMM1VUDfTrtdsEXg04MdABcYMDt2D0K" // <- UPDATE
                $0.server = "https://parseapi.back4app.com"
        }
        Parse.initialize(with: parseConfig)
        
        // --- end copy


        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

