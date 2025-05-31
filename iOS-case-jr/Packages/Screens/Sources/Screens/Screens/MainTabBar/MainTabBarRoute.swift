//
//  MainTabBarRoute.swift
//  
//
//  Created by sercan kaya on 26.03.2024.
//


public protocol MainTabBarRoute {
    func placeOnWindowsTabBar()
}

public extension MainTabBarRoute where Self: RouterProtocol {
    func placeOnWindowsTabBar() {
        let router = MainTabBarRouter()
        let viewModel = MainTabBarViewModel(router: router)
        let viewController = MainTabBarViewController(viewModel: viewModel)
        let transition = PlaceOnWindowTransition()
        router.viewController = viewController
        router.openTransition = transition

        open(viewController, transition: transition)
    }
}
