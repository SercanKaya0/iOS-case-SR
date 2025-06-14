//
//  UIApplication+Extensions.swift
//  Utilities
//
//  Created by Sercan KAYA on 18.01.2023.
//

import UIKit

public extension UIApplication {
    class func topViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }

    func registerPush(_ delegate: UNUserNotificationCenterDelegate?) {
        UNUserNotificationCenter.current().delegate = delegate
        registerForRemoteNotifications()
    }
}
