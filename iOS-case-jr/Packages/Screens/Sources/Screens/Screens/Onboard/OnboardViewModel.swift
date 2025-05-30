//
//  SplashViewModel.swift
//  Screens
//
//  Created by sercankaya on 30.05.2025.
//

import Foundation

public protocol OnboardViewDataSource {
}

public protocol OnboardViewEventSource {
}

public protocol OnboardViewProtocol: SplashViewDataSource, SplashViewEventSource {
    func viewDidLoad()
}

public final class OnboardViewModel:
    BaseViewModel<OnboardRouter>,
    OnboardViewProtocol {
    
    public func viewDidLoad() {
        
    }
}

// MARK: - DataSources
public extension OnboardViewModel {
    
}

// MARK: - ConfigureContents
private extension OnboardViewModel {
}

// MARK: - Requests
private extension OnboardViewModel {
    
}
