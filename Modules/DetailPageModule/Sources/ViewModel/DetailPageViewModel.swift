//
//  DetailPageViewModel.swift
//  DetailPageModule
//
//  Created by Said Çankıran on 23.09.2022.
//

import Foundation
import NetworkKit
import ExtensionKit
import UIKit

class DetailPageViewModel {
    
    private let movieData: Movie
    
    public init(detailPageViewModel: Movie) {
        self.movieData = detailPageViewModel
    }
    
    var movieName: String {
        return movieData.title
    }
    
    var movieOverview: String {
        return movieData.overview ?? ""
    }
    
    var posterPath: String {
        return movieData.poster_path ?? ""
    }
    
}
