//
//  SceneDelegate.swift
//  ExploreSwiftUI
//
//  Created by 한석호 on 2019/06/19.
//  Copyright © 2019 MilKyo. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: LandmarkList())
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}

