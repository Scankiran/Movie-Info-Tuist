//
//  Dependency+Helper.swift
//  ProjectDescriptionHelpers
//
//  Created by Said Çankıran on 21.09.2022.
//

import Foundation
import ProjectDescription

extension Project {
    

    
}

public enum ExternalTargetDependency: String {
    case Moya
    case Kingfisher
    case Lottie = "Lottie"

    public func makeExternalDependency() -> TargetDependency {
        return .external(name: self.rawValue)
    }
}
