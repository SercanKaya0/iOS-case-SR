//
//  AppRouter.swift
//  Loodos-hr
//
//  Created by sercan kaya on 26.03.2024.
//

import UIKit
import Utilities

typealias Routes =
SplashRoute

public final class AppRouter: Router, Routes {
    public weak var window: UIWindow?

    public func topViewController() -> UIViewController? {
        UIApplication.topViewController()
    }

    public static let shared = AppRouter()

    public override func open(
        _ viewController: UIViewController,
        transition: Transition
    ) {
        self.viewController = topViewController()
        super.open(viewController, transition: transition)
    }

    public func startApp() {
        AppRouter.shared.pushSplash()
    }
}
