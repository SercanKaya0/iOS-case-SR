//
//  SplashViewController.swift
//  Screens
//
//  Created by sercankaya on 30.05.2025.
//

import UIKit

public final class OnboardViewController: BaseViewController<OnboardViewModel> {
    
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
private extension OnboardViewController {
    
    func addSubViews() {
        
    }
}

// MARK: - ConfigureContents
private extension OnboardViewController {
    
    func configureContents() {
    }
    
    func configureViewController() {
        
    }
}

// MARK: SubscribeViewModel
private extension OnboardViewController {
    
    func subscribeViewModel() {
    }
}
