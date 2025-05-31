//
//  MainTabBarViewController.swift
//
//
//  Created by sercan kaya on 26.03.2024.
//

import UIKit

public final class MainTabBarViewController: UITabBarController {

    public var viewModel: MainTabBarViewProtocol
    
    private lazy var defaultTabBarHeight = {
        tabBar.frame.size.height
    }()

    init(viewModel: MainTabBarViewProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBar()
        configureViewControllers()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    public func selectedIndex(_ index: Int) {
        self.selectedIndex = index
    }

    private func configureTabBar() {
        tabBar.isTranslucent = false
    }

    private func configureViewControllers() {
        viewControllers = [
            createHomeViewController()
        ]
    }

    private func createTabBarItem(
        unSelectedImage: UIImage,
        selectedImage: UIImage,
        title: String
    ) -> UITabBarItem {
        let tabBarItem = UITabBarItem()
        tabBarItem.image = unSelectedImage.withRenderingMode(.alwaysOriginal)
        tabBarItem.selectedImage = selectedImage
        tabBar.tintAdjustmentMode = .normal
        tabBarItem.title = title
        return tabBarItem
    }

    // MARK: - HomeViewController
    private func createHomeViewController() -> UIViewController {
        let router = HomeRouter()
        let viewModel = HomeViewModel(router: router)
        let viewController = HomeViewController(viewModel: viewModel)

        let navBar = BaseNavigationController(rootViewController: viewController)
        viewController.tabBarItem = createTabBarItem(
            unSelectedImage: .actions,
            selectedImage: .actions,
            title: "Anasayfa"
        )
        return navBar
    }
}
