//
//  PopToRoute.swift
//  Loodos-hr
//
//  Created by Sercan KAYA on 18.01.2023.
//

import Foundation

public protocol PopToRootRoute {
    func popToRoot(isAnimated: Bool)
}

public extension PopToRootRoute where Self: RouterProtocol {
    func popToRoot(isAnimated: Bool = true) {
        guard let navigationController = viewController?.navigationController else {
            return
        }
        navigationController.popToRootViewController(animated: isAnimated)
    }
}
