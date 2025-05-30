//
//  SplashViewModel.swift
//  Screens
//
//  Created by sercankaya on 30.05.2025.
//

import Foundation

public protocol SplashViewDataSource {
}

public protocol SplashViewEventSource {
}

public protocol SplashViewProtocol: SplashViewDataSource, SplashViewEventSource {
    func viewDidLoad()
}

public final class SplashViewModel:
    BaseViewModel<SplashRouter>,
    SplashViewProtocol {
    
    public func viewDidLoad() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.router.pushOnboard()
        }
    }
}

// MARK: - DataSources
public extension SplashViewModel {
    
}

// MARK: - ConfigureContents
private extension SplashViewModel {
    
}

// MARK: - Requests
private extension SplashViewModel {
    
}
