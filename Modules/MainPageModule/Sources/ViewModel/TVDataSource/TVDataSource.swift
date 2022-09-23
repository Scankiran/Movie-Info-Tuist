//
//  TVDataSource.swift
//  MainPageModule
//
//  Created by Said Çankıran on 22.09.2022.
//

import Foundation
import UIKit
import NetworkKit

protocol TVDataSourceOutputDelegate: AnyObject {
    func showMovieDetail(movie: Movie)
    func fetchMovies(page: Int)
}

class TVDataSource: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    var page: Int = 1
    var data: [Movie]
    weak var outputDelegate: TVDataSourceOutputDelegate? {
        didSet {
            self.outputDelegate?.fetchMovies(page: page)
        }
    }
    
    
    init(data: [Movie]) {
        self.data = data
    }
    
    func updateDataSource(data: [Movie]) {
        self.data = data
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieSummaryCell") as? MovieSummaryCell else {
            return UITableViewCell()
        }
        cell.initializeView(data: data[indexPath.row])
        
        checkRow(row: indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.outputDelegate?.showMovieDetail(movie: data[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
}

private extension TVDataSource {
    
    func checkRow(row: Int) {
        if row == data.count - 4 {
            self.page += 1
            self.outputDelegate?.fetchMovies(page: self.page)
        }
    }
}
