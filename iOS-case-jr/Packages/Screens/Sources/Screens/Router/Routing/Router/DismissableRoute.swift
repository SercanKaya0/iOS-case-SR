//
//  DismissableRoute.swift
//  Loodos-hr
//
//  Created by Sercan KAYA on 18.01.2023.
//

import Foundation
import Utilities

public protocol Dismissable {
    func dismiss(
        isAnimated: Bool,
        completion: VoidClosure?
    )
}

public extension Dismissable where Self: RouterProtocol {
    func dismiss(
        isAnimated: Bool = true,
        completion: VoidClosure? = nil
    ) {
        guard let viewController = viewController else {
            assertionFailure("Nothing to close.")
            return
        }
        viewController.dismiss(animated: isAnimated, completion: completion)
    }
}
