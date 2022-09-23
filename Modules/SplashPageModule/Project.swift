//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Said Çankıran on 22.09.2022.
//

import Foundation
import ProjectDescription


let animationKitDependency = TargetDependency.project(target: "AnimationKit", path: .relativeToRoot("Kits/AnimationKit"))
let mainPageModuelDependency = TargetDependency.project(target: "MainPageModule", path: .relativeToRoot("Modules/MainPageModule"))

let splashMainTarget = Target(name: "SplashPageModule",
                              platform: .iOS,
                              product: .staticFramework,
                              bundleId: "com.cankiran.SplashPageModule",
                              sources: "Sources/**",
                              resources: "Resources/**",
                              dependencies: [animationKitDependency, mainPageModuelDependency])

let project = Project(name: "SplashPageModule",
                      targets: [splashMainTarget])
