//
//  AppDelegate.swift
//  LightTheCandle
//
//  Created by Abraham JongYoung Park on 4/17/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let config = UISceneConfiguration(name: "Default Configuration", sessionRole: .windowApplication)
        
        config.sceneClass = UIWindowScene.self
        config.delegateClass = SceneDelegate.self
        
        if UIDevice.current.userInterfaceIdiom == .phone {
            config.storyboard = UIStoryboard(name: "Main", bundle: nil)
        } else {
            config.storyboard = UIStoryboard(name: "Main-iPad", bundle: nil)
        }
        return config
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
}

