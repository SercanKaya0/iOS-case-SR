//
//  SplashViewController.swift
//  Screens
//
//  Created by sercankaya on 30.05.2025.
//

import UIKit

public final class OTPViewController: BaseViewController<OTPViewModel> {
    
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
private extension OTPViewController {
    
    func addSubViews() {
        view.backgroundColor = .red
    }
}

// MARK: - ConfigureContents
private extension OTPViewController {
    
    func configureContents() {
    }
    
    func configureViewController() {
        
    }
}

// MARK: SubscribeViewModel
private extension OTPViewController {
    
    func subscribeViewModel() {
    }
}
