//
//  SplashRoute.swift
//  Screens
//
//  Created by sercankaya on 30.05.2025.
//


public protocol SplashRoute {
    func pushSplash()
}

public extension SplashRoute where Self: RouterProtocol {
    
    func pushSplash() {
        let router = SplashRouter()
        let viewModel = SplashViewModel(router: router)
        let viewController = SplashViewController(viewModel: viewModel)
        let navBar = BaseNavigationController(rootViewController: viewController)
        let transition = PlaceOnWindowTransition()
        router.viewController = viewController
        router.openTransition = transition
        
        open(navBar, transition: transition)
    }
}
