//
//  SplashPageView.swift
//  SplashPageModule
//
//  Created by Said Çankıran on 22.09.2022.
//

import UIKit
import AnimationKit

public class SplashPageView: UIViewController {
    
    let viewModel = SplashPageViewModel()

    public override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.present(self.viewModel.buildMainPage(), animated: true, completion: nil)
        }
        
    }

}
