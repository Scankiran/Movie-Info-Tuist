//
//  MovieService.swift
//  NetworkKit
//
//  Created by Said Çankıran on 22.09.2022.
//

import Foundation
import Moya

public class MovieService {
    
    private var provider = MoyaProvider<MovieServices>()
    
    public init() { }
    public static let shared = MovieService.init()
    
    public func getTopRatedMovies(page: Int,completion: @escaping ((_ movieData: [Movie]?, _ error: MovieFetchError?) -> Void)) {
        
        provider.request(.topRated(page: page)) { result in
            switch result {
            case .failure(let err):
                let fetchError = MovieFetchError.map(err)
                completion(nil, fetchError)
                
            case .success(let response):
                if let movieData = try? JSONDecoder().decode(MovieResponse.self, from: response.data) {
                    completion(movieData.results, nil)
                } else {
                    completion(nil, nil)
                }
            }
        }
        
    }
    
}
