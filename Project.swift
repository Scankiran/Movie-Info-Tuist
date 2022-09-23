import ProjectDescription
import ProjectDescriptionHelpers



// MARK: - Project


let mainTargetDependencies: [TargetDependency] = [
        .project(target: "MainPageModule", path: .relativeToRoot("Modules/MainPageModule")),
        .project(target: "DetailPageModule", path: .relativeToRoot("Modules/DetailPageModule")),
        .project(target: "SplashPageModule", path: "Modules/SplashPageModule")
]

let infoPlistFile: InfoPlist = .extendingDefault(with: [
    "UILaunchStoryboardName" : "LaunchScreen"
])


let mainTarget = Target(name: "MovieInfoMainTarget",
                        platform: .iOS,
                        product: .app,
                        bundleId: "com.cankiran.movieInfoMain",
                        infoPlist: infoPlistFile,
                        sources: "MovieInfoMainTarget/Sources/**",
                        resources: "MovieInfoMainTarget/Resource/**",
                        dependencies: mainTargetDependencies)



// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project(name: "MovieInfoTuistApp",
                      organizationName: nil,
                      targets: [mainTarget])



