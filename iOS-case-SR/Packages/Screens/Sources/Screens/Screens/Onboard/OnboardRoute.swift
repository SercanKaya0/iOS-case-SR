//
//  SplashRoute.swift
//  Screens
//
//  Created by sercankaya on 30.05.2025.
//


public protocol OnboardRoute {
    func pushOnboard()
}

public extension OnboardRoute where Self: RouterProtocol {
    
    func pushOnboard() {
        let router = OnboardRouter()
        let viewModel = OnboardViewModel(router: router)
        let viewController = OnboardViewController(viewModel: viewModel)
        
        let transition = PushTransition()
        router.viewController = viewController
        router.openTransition = transition
        
        open(viewController, transition: transition)
    }
}
