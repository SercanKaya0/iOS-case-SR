//
//  HomeRoute.swift
//  Screens
//
//  Created by sercankaya on 31.05.2025.
//

import Foundation

public protocol HomeRoute {
    func pushHome()
}

public extension HomeRoute where Self: RouterProtocol {
    
    func pushHome() {
        let router = HomeRouter()
        let viewModel = HomeViewModel(router: router)
        let viewController = HomeViewController(viewModel: viewModel)
        
        let transition = PlaceOnWindowTransition()
        router.viewController = viewController
        router.openTransition = transition
        
        open(viewController, transition: transition)
    }
}
