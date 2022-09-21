//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Said Çankıran on 18.09.2022.
//

import ProjectDescription

let networkKitDependency = TargetDependency
    .project(target: "NetworkKit", path: .relativeToRoot("Kits/NetworkKit"))

let animationKitDependency = TargetDependency
    .project(target: "AnimationKit", path: .relativeToRoot("Kits/AnimationKit"))

let detailPageTarget = Target(name: "DetailPageModule",
                              platform: .iOS,
                              product: .staticFramework,
                              bundleId: "com.saidcankiran.DetailPageModule",
                              sources: "Sources/**",
                              resources: "Resource/**",
                              dependencies: [
                                networkKitDependency,
                                animationKitDependency
                              ]
)

let project = Project(name: "DetailPageModule",
                      targets: [detailPageTarget]
)
