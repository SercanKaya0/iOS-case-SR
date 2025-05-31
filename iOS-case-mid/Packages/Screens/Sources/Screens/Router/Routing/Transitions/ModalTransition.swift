//
//  ModalTransition.swift
//  Loodos-hr
//
//  Created by Sercan KAYA on 18.01.2023.
//

import UIKit

public class ModalTransition: NSObject {
    var animator: Animator?
    var isAnimated = true

    var modalTransitionStyle: UIModalTransitionStyle
    var modalPresentationStyle: UIModalPresentationStyle

    var completionHandler: (() -> Void)?

    weak public var viewController: UIViewController?

    public init(
        animator: Animator? = nil,
        isAnimated: Bool = true,
        modalTransitionStyle: UIModalTransitionStyle = .coverVertical,
        modalPresentationStyle: UIModalPresentationStyle = .fullScreen
    ) {
        self.animator = animator
        self.isAnimated = isAnimated
        self.modalTransitionStyle = modalTransitionStyle
        self.modalPresentationStyle = modalPresentationStyle
    }
}

// MARK: - Transition

extension ModalTransition: Transition {
    public func open(_ viewController: UIViewController) {
        viewController.transitioningDelegate = self
        viewController.modalTransitionStyle = modalTransitionStyle
        viewController.modalPresentationStyle = modalPresentationStyle

        self.viewController?.present(viewController, animated: isAnimated, completion: completionHandler)
    }

    public func close(_ viewController: UIViewController) {
        viewController.dismiss(animated: isAnimated, completion: completionHandler)
    }
}

// MARK: - UIViewControllerTransitioningDelegate

extension ModalTransition: UIViewControllerTransitioningDelegate {
    public func animationController(
        forPresented presented: UIViewController,
        presenting: UIViewController,
        source: UIViewController
    ) -> UIViewControllerAnimatedTransitioning? {
        guard let animator = animator else {
            return nil
        }
        animator.isPresenting = true
        return animator
    }

    public func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        guard let animator = animator else {
            return nil
        }
        animator.isPresenting = false
        return animator
    }
}
