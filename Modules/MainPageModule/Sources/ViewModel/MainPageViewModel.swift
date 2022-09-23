//
//  MainPageViewModel.swift
//  MainPageModule
//
//  Created by Said Çankıran on 22.09.2022.
//

import Foundation
import NetworkKit

class MainPageViewModel {

    var sendUpdatedMovieData: (([Movie]) -> ())?

    init() { }

    var movieData: [Movie] = []

    func getTopRatedMovies(page: Int) {

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
