//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Said Çankıran on 18.09.2022.
//

import ProjectDescription
import ProjectDescriptionHelpers

let detailPageDependency: TargetDependency = .project(target: "DetailPageModule", path: .relativeToRoot("Modules/DetailPageModule"))


let networkKitDependency = TargetDependency
    .project(target: "NetworkKit", path: .relativeToRoot("Kits/NetworkKit"))

let animationKitDependency = TargetDependency
    .project(target: "AnimationKit", path: .relativeToRoot("Kits/AnimationKit"))


let mainPageTarget = Target(name: "MainPageModule",
                            platform: .iOS,
                            product: .staticFramework,
                            bundleId: "com.saidcankiran.MainPageModule",
                            sources: "Sources/**",
                            resources: "Resource/**",
                            dependencies: [
                                detailPageDependency,
                                networkKitDependency,
                                animationKitDependency
                            ])

let project = Project(name: "MainPageModule",
                      targets: [mainPageTarget]
)
