//
//  BaseViewController.swift
//  Loodos-hr
//
//  Created by Sercan KAYA on 10.11.2022.
//
import UIKit
import Utilities

open class BaseViewController<V: BaseViewModelProtocol>: UIViewController{
    public var viewModel: V
    public var animatedPopController = true
    public var screenBounds = UIScreen.main.bounds

    open override var canBecomeFirstResponder: Bool {
        true
    }

    // MARK: - Publics
    public var backButtonTapped: VoidClosure?

    public init(viewModel: V) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open override func viewDidLoad() {
        super.viewDidLoad()
    }

    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

#if DEBUG || DEVELOP
    deinit {
        print("deinit \(self)")
    }
#endif
}
