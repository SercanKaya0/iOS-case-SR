//
//  SplashViewModel.swift
//  Screens
//
//  Created by sercankaya on 30.05.2025.
//

import Foundation

public protocol OTPViewDataSource {
    var expiresIn: Int? { get set }
}

public protocol OTPViewEventSource {
}

public protocol OTPViewProtocol: OTPViewDataSource, OTPViewEventSource {
    func viewDidLoad()
}

public final class OTPViewModel: BaseViewModel<OTPRouter>, OTPViewProtocol {
    // MARK: - Publics
    public var expiresIn: Int?
    
    public init(
        router: OTPRouter,
        expiresIn: Int = 60
    ) {
        super.init(router: router)
    }
    
    public func viewDidLoad() {
       
    }
}

// MARK: - DataSources
public extension OTPViewModel {
    
}

// MARK: - ConfigureContents
private extension OTPViewModel {
    
}

// MARK: - Requests
private extension OTPViewModel {
    
}
