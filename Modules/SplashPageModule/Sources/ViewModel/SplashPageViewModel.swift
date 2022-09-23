//
//  SplashPageViewModel.swift
//  SplashPageModule
//
//  Created by Said Çankıran on 22.09.2022.
//

import Foundation
import MainPageModule
import UIKit

class SplashPageViewModel {
    
    func buildMainPage() -> UIViewController {
        let vc = MainPageView()
        let navigationController = UINavigationController(rootViewController: vc)
        navigationController.modalPresentationStyle = .fullScreen
        return navigationController
    }
}
