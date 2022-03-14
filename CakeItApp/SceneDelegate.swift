//
//  SceneDelegate.swift
//  CakeItApp
//
//  Created by Jasim Uddin on 14/03/2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let sceneWindow = (scene as? UIWindowScene) else { return }
        
        // create the main navigation controller to be used for our app
           let navController = UINavigationController()
           window = UIWindow(windowScene: sceneWindow)
           window?.rootViewController = navController
           window?.makeKeyAndVisible()
    }

}

