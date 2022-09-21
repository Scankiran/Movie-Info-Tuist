//
//  DependencyHelper.swift
//  ProjectDescriptionHelpers
//
//  Created by Said Çankıran on 18.09.2022.
//

import Foundation
import ProjectDescription


public enum ExternalTargetDependency: String {
    case Moya
    case Kingfisher
    case Lottie = "Lottie"

    public func makeExternalDependency() -> TargetDependency {
        return .external(name: self.rawValue)
    }
}
