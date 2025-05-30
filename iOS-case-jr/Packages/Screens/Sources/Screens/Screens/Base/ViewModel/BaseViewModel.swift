//
//  BaseViewModel.swift
//  MovieApp
//
//  Created by Sercan KAYA on 10.11.2022.
//

import Foundation

public protocol BaseViewModelDataSource: AnyObject {}

public protocol BaseViewModelEventSource: AnyObject {
}

public protocol BaseViewModelProtocol: BaseViewModelDataSource, BaseViewModelEventSource {
}

open class BaseViewModel<R: Router>: BaseViewModelProtocol {
    public let router: R
    
    public init(
        router: R
    ) {
        self.router = router
    }

#if DEBUG || DEVELOP
    deinit {
        print("deinit \(self)")
    }
#endif
}
