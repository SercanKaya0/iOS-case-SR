//
//  Transition.swift
//  Loodos-hr
//
//  Created by Sercan KAYA on 18.01.2023.
//

import Foundation
import UIKit

public protocol Transition: AnyObject {
    var viewController: UIViewController? { get set }

    func open(_ viewController: UIViewController)
    func close(_ viewController: UIViewController)
}
