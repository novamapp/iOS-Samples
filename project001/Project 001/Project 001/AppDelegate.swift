//
//  AppDelegate.swift
//  Project 001
//
//  Created by Ogheneovo Abu on 2/4/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        logLCEvent(for: "AppDelegate", event: "didFinishLaunchingWithOptions")
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
        logLCEvent(for: "AppDelegate", event: "configurationForConnecting")
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        
        logLCEvent(for: "AppDelegate", event: "didFinishLaunchingWithOptions")
    }


}

func logLCEvent(for className: String, event: String) {
    print("\n\(className) || \(event)")
}

