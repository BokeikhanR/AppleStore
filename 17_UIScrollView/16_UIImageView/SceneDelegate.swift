//
//  SceneDelegate.swift
//  16_UIImageView
//
//  Created by admin on 09.07.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        let buyVC = BuyViewController()
        let forYouVC = ForYouViewController()
        let searchVC = SearchViewController()
        let bascetVC = BascetViewController()

        let navigationController = UINavigationController(rootViewController: searchVC)

        buyVC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "laptopcomputer.and.iphone"), tag: 0)


        forYouVC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "person.crop.circle"), tag: 1)


        searchVC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "magnifyingglass"), tag: 2)
   

        bascetVC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "bag"), tag: 3)

        let tabBarVC = UITabBarController()
        tabBarVC.setViewControllers([buyVC, forYouVC, navigationController, bascetVC], animated: true)
        tabBarVC.tabBar.barTintColor = .black

        window?.rootViewController = tabBarVC
        window?.makeKeyAndVisible()
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }

}

