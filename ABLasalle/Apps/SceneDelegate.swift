//
//  SceneDelegate.swift
//  ABLasalle
//
//  Created by Miguel Nantón Díaz on 5/10/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        
        let navigationController = UINavigationController()
        let splashViewController = SplashViewController()
        
        // Inyectamos el ViewModel en la primera Vista SplashViewController
        splashViewController.viewModel = SplashViewModel(viewDelegate: splashViewController)
        // Configuramos el Navigation Controller, para que SplashViewController sea la inicial
        navigationController.setViewControllers([splashViewController], animated: true)
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
       
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
       
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
       
    }


}

