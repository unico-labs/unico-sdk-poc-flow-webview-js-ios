//
//  SceneDelegate.swift
//  webview-tests
//
//  Created by Matheus Domingos on 29/07/22.
//

import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        let url = URLContexts.first?.url
        NotificationCenter.default.post(name: .didReceiveDeepLink, object: url)
    }
}
