//
//  SceneDelegate.swift
//  CakeItApp
//
//  Created by Jasim Uddin on 14/03/2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var coordinator: MainCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let sceneWindow = (scene as? UIWindowScene) else { return }
        
        // create the main navigation controller to be used for our app
           let navController = UINavigationController()
        // send that into our coordinator so that it can display view controllers
        coordinator = MainCoordinator(navigationController: navController)

        // tell the coordinator to take over control
        coordinator?.start()
        
           window = UIWindow(windowScene: sceneWindow)
           window?.rootViewController = navController
           window?.makeKeyAndVisible()
    }

}

