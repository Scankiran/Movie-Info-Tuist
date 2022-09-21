//
//  MainPageView.swift
//  MovieInfoMainTarget
//
//  Created by Said Çankıran on 18.09.2022.
//

import Foundation
import UIKit
import DetailPageModule

public class MainPageView: UIViewController {
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: "MainPageView", bundle: MainPageModuleResources.bundle)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        print("MainPageView Loaded")
        goToDetailPage()
    }
    
    func goToDetailPage() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            let vc = DetailPageView.init()
            self.present(vc, animated: true, completion: nil)
        }
    }
    
}
