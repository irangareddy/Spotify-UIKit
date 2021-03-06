//
//  AppDelegate.swift
//  Spotify UIKit
//
//  Created by RANGA REDDY NUKALA on 18/08/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    /// Since a Storyboard is deleted so, we need to specify the first window/view
    
    var window: UIWindow?



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        if(AuthManager.shared.isSignedIn) {
            window.rootViewController = TabBarViewController()
        } else {
            let firstVC =  UINavigationController(rootViewController: WelcomeViewController())
            firstVC.navigationBar.prefersLargeTitles = true
            firstVC.viewControllers.first?.navigationItem.largeTitleDisplayMode = .always
            window.rootViewController = firstVC
        }
        
        window.makeKeyAndVisible()
        self.window = window
        
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

