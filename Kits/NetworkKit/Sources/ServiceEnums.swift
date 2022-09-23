//
//  ServiceEnums.swift
//  NetworkKit
//
//  Created by Said Çankıran on 22.09.2022.
//

import Foundation
import Moya

public enum MovieServices {
    case topRated(page: Int)
    case popular(page: Int)

}

extension MovieServices: TargetType {
    public var baseURL: URL {
        return URL(string: "https://api.themoviedb.org/3")!
    }

    public var path: String {
        switch self {
        case .topRated:
            return "/movie/top_rated"
        case .popular:
            return "/movie/popular"
        }
    }

    public var task: Task {
        switch self {
        case .topRated(let page):
            return .requestParameters(parameters: ["api_key": "99fe6c6ab1a8bc88bd754ff5aa598e23", "page": page], encoding: URLEncoding.default)
        case .popular(let page):
            return .requestParameters(parameters: ["api_key": "99fe6c6ab1a8bc88bd754ff5aa598e23", "page": page], encoding: URLEncoding.default)
        }
    }

    public var headers: [String: String]? {
        return nil
    }

    public var method: Moya.Method {
        return .get
    }

}
