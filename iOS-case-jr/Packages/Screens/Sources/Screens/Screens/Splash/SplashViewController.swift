//
//  SplashViewController.swift
//  Screens
//
//  Created by sercankaya on 30.05.2025.
//

import UIKit

public final class SplashViewController: BaseViewController<SplashViewModel> {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        configureViewController()
        configureContents()
        subscribeViewModel()
        viewModel.viewDidLoad()
    }
}

// MARK: - UILayout
private extension SplashViewController {
    
    func addSubViews() {
        view.backgroundColor = .red
    }
}

// MARK: - ConfigureContents
private extension SplashViewController {
    
    func configureContents() {
    }
    
    func configureViewController() {
        
    }
}

// MARK: SubscribeViewModel
private extension SplashViewController {
    
    func subscribeViewModel() {
    }
}
