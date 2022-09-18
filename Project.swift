import ProjectDescription
import ProjectDescriptionHelpers

public enum ExternalTargetDependency: String {
    case Moya
    case Kingfisher
    case Lottie = "Lottie"
}


public func makeExternalDependency(dependency: ExternalTargetDependency) -> TargetDependency {
    return .external(name: dependency.rawValue)
}

// MARK: - Project

let mainTarget = Target(name: "MovieInfoMainTarget",
                        platform: .iOS,
                        product: .app,
                        bundleId: "com.cankiran.movieInfoMain",
                        sources: ["MovieInfoMainTarget/Sources/**"],
                        resources: ["MovieInfoMainTarget/Resource/**"],
                        dependencies: [
                                       makeExternalDependency(dependency: .Moya),
                                       makeExternalDependency(dependency: .Kingfisher),
                                       makeExternalDependency(dependency: .Lottie)
                        ])

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project(name: "MovieInfoTuistApp",
                      organizationName: nil,
                      targets: [mainTarget])
