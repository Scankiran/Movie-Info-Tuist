//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Said Çankıran on 21.09.2022.
//

import ProjectDescription
import ProjectDescriptionHelpers

let animationKitDependency: [TargetDependency] = [
    ExternalTargetDependency.Lottie.makeExternalDependency()
]


let animationKitMainTarget: Target = .init(name: "AnimationKit",
                                           platform: .iOS,
                                           product: .staticFramework,
                                           bundleId: "com.cankiran.AnimationKit",
                                           sources: "Sources/**",
                                           resources: "Resources/**",
                                           dependencies: animationKitDependency)

let project = Project(name: "AnimationKit",
                      targets: [animationKitMainTarget])

