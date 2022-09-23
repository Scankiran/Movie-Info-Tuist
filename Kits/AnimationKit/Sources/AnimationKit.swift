//
//  AnimationKit.swift
//  AnimationKit
//
//  Created by Said Çankıran on 22.09.2022.
//

import Foundation
import Lottie
import UIKit

public enum LottieAnimations: String {
    case splashScreenAnimation = "splashScreenAnimation.json"
}

public class AnimationKitHelper {
    
    public init() { }
    
    func createAndPlayAnimation(with animation: LottieAnimations, completion: @escaping LottieCompletionBlock){
        let animationView = AnimationView(name: animation.rawValue, bundle: AnimationKitResources.bundle)
        animationView.play(completion: completion)
    }
    
//    public func createAnimation(with animation: LottieAnimations) -> Animation {
//        return anima
//    }
    
}
