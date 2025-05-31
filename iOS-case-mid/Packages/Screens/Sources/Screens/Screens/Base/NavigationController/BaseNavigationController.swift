//
//  BaseNavigationController.swift
//  MovieApp
//
//  Created by Sercan KAYA on 10.11.2022.
//

import UIKit

public class BaseNavigationController: UINavigationController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = nil
        interactivePopGestureRecognizer?.isEnabled = false
        additionalSafeAreaInsets.top = 4
    }

    public override var preferredStatusBarStyle: UIStatusBarStyle {
        .default
    }

    private func configureContents() {
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.configureWithOpaqueBackground()
        navigationBarAppearance.shadowColor = nil
        UINavigationBar.appearance().standardAppearance = navigationBarAppearance
        UINavigationBar.appearance().compactAppearance = navigationBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
    }
}
