//
//  PopToViewController.swift
//  Loodos-hr
//
//  Created by Sercan KAYA on 18.01.2023.
//

import Foundation
import UIKit

public protocol PopToViewController {
    func popToViewController<T: UIViewController>(
        typeClass: T.Type,
        isAnimated: Bool
    )
}

public extension PopToViewController where Self: RouterProtocol {
    func popToViewController<T: UIViewController>(
        typeClass: T.Type,
        isAnimated: Bool = true
    ) {
        guard let navigationController = self.viewController?.navigationController else {
            return
        }
        if let viewController = navigationController.viewControllers.first(where: { $0 is T }) {
            navigationController.popToViewController(viewController, animated: isAnimated)
        } else {
            navigationController.popToRootViewController(animated: isAnimated)
        }
    }
}
