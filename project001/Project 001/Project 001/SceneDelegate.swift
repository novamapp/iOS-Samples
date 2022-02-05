//
//  SceneDelegate.swift
//  Project 001
//
//  Created by Ogheneovo Abu on 2/4/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        logLCEvent(for: "SceneDelegate", event: "willConnectTo")
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        
        logLCEvent(for: "SceneDelegate", event: "sceneDidDisconnect")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
        logLCEvent(for: "SceneDelegate", event: "sceneDidBecomeActive")
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
        logLCEvent(for: "SceneDelegate", event: "sceneWillResignActive")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
        logLCEvent(for: "SceneDelegate", event: "sceneWillEnterForeground")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
        logLCEvent(for: "SceneDelegate", event: "sceneDidEnterBackground")
    }


}

