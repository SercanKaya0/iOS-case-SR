//
//  Animator.swift
//  Loodos-hr
//
//  Created by Sercan KAYA on 18.01.2023.
//

import UIKit

public protocol Animator: UIViewControllerAnimatedTransitioning {
    var isPresenting: Bool { get set }
}
