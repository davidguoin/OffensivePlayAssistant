//
//  SceneDelegate.swift
//  OffensivePlayAssistant
//
//  Created by Lori Lookliss on 1/12/25.
//
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let decisionVC = DecisionViewController()
        decisionVC.title = "Decision"
        decisionVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)

        let inputVC = InputViewController()
        inputVC.title = "Input"
        inputVC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)

        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [UINavigationController(rootViewController: decisionVC),
                                            UINavigationController(rootViewController: inputVC)]

        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
}
