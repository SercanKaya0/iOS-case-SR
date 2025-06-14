//
//  HomeViewModel.swift
//  Screens
//
//  Created by sercankaya on 31.05.2025.
//

import UIKit
import Utilities

public protocol HomeViewDataSource {
}

public protocol HomeViewEventSource {
    var reloadData: VoidClosure? { get set }
}

public protocol HomeViewProtocol: HomeViewDataSource, HomeViewEventSource {
    func viewDidLoad()
}

public final class HomeViewModel: BaseViewModel<HomeRouter>, HomeViewProtocol {
    // MARK: - Events
    public var reloadData: VoidClosure?
    
    public func viewDidLoad() {
    }
}

// MARK: - DataSources
public extension HomeViewModel {
    
}

// MARK: - ConfigureContents
private extension HomeViewModel {
    
}

// MARK: - Requests
private extension HomeViewModel {
    
}
