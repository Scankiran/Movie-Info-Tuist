//
//  MainPageViewModel.swift
//  MainPageModule
//
//  Created by Said Çankıran on 22.09.2022.
//

import Foundation
import NetworkKit
import UIKit
import DetailPageModule

class MainPageViewModel {

    var sendUpdatedMovieData: (([Movie]) -> ())?
    var showDetailPage: ((UIViewController) -> ())?

    init() { }

    var movieData: [Movie] = []

    private func getTopRatedMovies(page: Int) {

        MovieService.shared.getTopRatedMovies(page: page) { [unowned self] movieData, err in
            if let err = err {
                print(err.localizedDescription)
            } else {
                if let movieData = movieData {
                    self.movieData.append(contentsOf: movieData)
                    self.sendUpdatedMovieData?(self.movieData)
                }
            }
        }
    }
    
}

extension MainPageViewModel: TVDataSourceOutputDelegate {
    func fetchMovies(page: Int) {
        self.getTopRatedMovies(page: page)
    }
    
    
    func showMovieDetail(movie: Movie) {
        self.showDetailPage?(DetailPageView(movieData: movie))
    }
}
