//
//  MainTabBarViewModel.swift
//
//
//  Created by sercan kaya on 26.03.2024.
//

import Foundation
import Utilities

public protocol MainTabBarViewDataSource {
}

public protocol MainTabBarViewEventSource {
    var reloadData: VoidClosure? { get set }
}

public protocol MainTabBarViewProtocol: MainTabBarViewDataSource, MainTabBarViewEventSource {
    func viewDidLoad()
}

public final class MainTabBarViewModel: BaseViewModel<MainTabBarRouter>, MainTabBarViewProtocol {
    // MARK: - Events
    public var reloadData: VoidClosure?

    public func viewDidLoad() {
    }

}

// MARK: - DataSources
public extension MainTabBarViewModel {
}

// MARK: - ConfigureContents
public extension MainTabBarViewModel {
}

// MARK: - Requests
public extension MainTabBarViewModel {
}
