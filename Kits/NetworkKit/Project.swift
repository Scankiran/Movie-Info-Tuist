//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Said Çankıran on 21.09.2022.
//

import ProjectDescription
import ProjectDescriptionHelpers

let networkKitTargetDependencies: [TargetDependency] = [

    ExternalTargetDependency.Kingfisher.makeExternalDependency(),
    ExternalTargetDependency.Moya.makeExternalDependency()

]

let networkKitMainTarget: Target = .init(name: "NetworkKit",
                                         platform: .iOS,
                                         product: .staticFramework,
                                         bundleId: "com.cankiran.NetworkKit",
                                         sources: "Sources/**",
                                         dependencies: networkKitTargetDependencies)

let project = Project(name: "NetworkKit",
                      targets: [networkKitMainTarget])
