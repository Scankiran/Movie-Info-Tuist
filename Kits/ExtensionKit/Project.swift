//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Said Çankıran on 23.09.2022.
//

import ProjectDescription


let animationKitMainTarget: Target = .init(name: "ExtensionKit",
                                           platform: .iOS,
                                           product: .staticFramework,
                                           bundleId: "com.cankiran.ExtensionKit",
                                           sources: "Sources/**")

let project = Project(name: "ExtensionKit",
                      targets: [animationKitMainTarget])

