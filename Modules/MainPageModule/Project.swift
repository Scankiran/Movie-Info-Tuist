//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Said Çankıran on 18.09.2022.
//

import ProjectDescription

let detailPageDependency: TargetDependency = .project(target: "DetailPageModule", path: .relativeToRoot("Modules/DetailPageModule"))

let mainPageTarget = Target(name: "MainPageModule",
                            platform: .iOS,
                            product: .staticFramework,
                            bundleId: "com.saidcankiran.MainPageModule",
                            sources: "Sources/**",
                            resources: "Resource/**",
                            dependencies: [
                                           detailPageDependency
                            ])

let project = Project(name: "MainPageModule",
                      targets: [mainPageTarget]
)