//
//  SplashRoute.swift
//  Screens
//
//  Created by sercankaya on 30.05.2025.
//


public protocol OTPRoute {
    func pushOTP(expiresIn: Int?)
}

public extension OTPRoute where Self: RouterProtocol {
    
    func pushOTP(expiresIn: Int?) {
        let router = OTPRouter()
        let viewModel = OTPViewModel(router: router)
        let viewController = OTPViewController(viewModel: viewModel)
        let transition = PlaceOnWindowTransition()
        router.viewController = viewController
        router.openTransition = transition
        
        open(viewController, transition: transition)
    }
}
