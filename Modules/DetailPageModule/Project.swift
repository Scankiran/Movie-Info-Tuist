//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Said Çankıran on 18.09.2022.
//

import ProjectDescription

let animationKitDependency = TargetDependency
    .project(target: "AnimationKit", path: .relativeToRoot("Kits/AnimationKit"))

let extensionKitDependency = TargetDependency
    .project(target: "ExtensionKit", path: .relativeToRoot("Kits/ExtensionKit"))

let detailPageTarget = Target(name: "DetailPageModule",
                              platform: .iOS,
                              product: .staticFramework,
                              bundleId: "com.saidcankiran.DetailPageModule",
                              sources: "Sources/**",
                              resources: "Resource/**",
                              dependencies: [
                                extensionKitDependency,
                                animationKitDependency
                              ]
)

let project = Project(name: "DetailPageModule",
                      targets: [detailPageTarget]
)
