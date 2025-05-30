//
//  PopToBack.swift
//  Loodos-hr
//
//  Created by Sercan KAYA on 18.01.2023.
//

import Foundation

public protocol PopToBackRoute {
    func popToBack(isAnimated: Bool)
}

public extension PopToBackRoute where Self: RouterProtocol {
    func popToBack(isAnimated: Bool = true) {
        guard let navigationController = self.viewController?.navigationController else {
            return
        }
        navigationController.popViewController(animated: isAnimated)
    }
}
