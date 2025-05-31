//
//  HomeViewController.swift
//  Screens
//
//  Created by sercankaya on 31.05.2025.
//

import UIKit

public final class HomeViewController: BaseViewController<HomeViewModel> {
    
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
private extension HomeViewController {
    
    func addSubViews() {
        
    }
}

// MARK: - ConfigureContents
private extension HomeViewController {
    
    func configureContents() {
    }
    
    func configureViewController() {
        
    }
}

// MARK: SubscribeViewModel
private extension HomeViewController {
    
    func subscribeViewModel() {
    }
}
