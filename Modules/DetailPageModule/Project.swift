//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Said Çankıran on 18.09.2022.
//

import ProjectDescription


let detailPageTarget = Target(name: "DetailPageModule",
                            platform: .iOS,
                            product: .staticFramework,
                            bundleId: "com.saidcankiran.DetailPageModule",
                            sources: "Sources/**",
                            resources: "Resource/**"
)

let project = Project(name: "DetailPageModule",
                      targets: [detailPageTarget]
)
