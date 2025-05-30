//
//  AppDelegate.swift
//  Loodos-hr
//
//  Created by Mert Karabulut on 25.03.2024.
//

import UIKit
import Screens

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    // swiftlint:disable force_cast
    static let shared = UIApplication.shared.delegate as! AppDelegate
    // swiftlint:enable force_cast
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        // Override point for customization after application launch.
        let bounds = UIScreen.main.bounds
        self.window = UIWindow(frame: bounds)
        self.window?.makeKeyAndVisible()
        AppRouter.shared.window = window
        AppRouter.shared.startApp()
        return true
    }
}
