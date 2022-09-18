//
//  Dependencies.swift
//  MovieInfo(Tuist)Manifests
//
//  Created by Said Çankıran on 18.09.2022.
//
import ProjectDescription
import ProjectDescriptionHelpers



let outSourceDependencies = Dependencies(
    carthage: nil,

    swiftPackageManager: [

            .remote(url: "https://github.com/Moya/Moya.git", requirement: .upToNextMajor(from: "15.0.0")),

            .remote(url: "https://github.com/onevcat/Kingfisher.git", requirement: .upToNextMajor(from: "7.0.0")),

            .remote(url: "https://github.com/airbnb/lottie-ios.git", requirement: .branch("Master"))

    ],

    platforms: [.iOS])
