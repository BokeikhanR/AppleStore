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

    guard let scene = (scene as? UIWindowScene) else { return }

            window?.windowScene = scene
            window?.rootViewController = MyViewController1()
            window?.makeKeyAndVisible()

  }
}

