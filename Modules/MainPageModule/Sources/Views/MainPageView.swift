//
//  MainPageView.swift
//  MovieInfoMainTarget
//
//  Created by Said Çankıran on 18.09.2022.
//

import Foundation
import UIKit
import DetailPageModule

public class MainPageView: UIViewController {
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: "MainPageView", bundle: MainPageModuleResources.bundle)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let viewModel = MainPageViewModel()
    var page: Int = 1
    var dataSource: TVDataSource?
    
    @IBOutlet private weak var tableView: UITableView!
    
    public override func viewDidLoad() {
        bindViewModel()
        loadTableView()
        self.viewModel.getTopRatedMovies(page: self.page)
        
    }
    
    func bindViewModel() {
        self.viewModel.sendUpdatedMovieData = { [weak self] movieData in
            self?.dataSource?.updateDataSource(data: movieData)
            self?.tableView.reloadData()
        }
    }
    
}


private extension MainPageView {
    
    func loadTableView() {
        tableView.register(.init(nibName: "MovieSummaryCell", bundle: MainPageModuleResources.bundle), forCellReuseIdentifier: "MovieSummaryCell")
        
        dataSource = TVDataSource(data: [])
        tableView.delegate = dataSource
        tableView.dataSource = dataSource
    }
}
