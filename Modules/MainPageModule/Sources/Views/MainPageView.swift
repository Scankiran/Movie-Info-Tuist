//
//  MainPageView.swift
//  MovieInfoMainTarget
//
//  Created by Said Çankıran on 18.09.2022.
//

import Foundation
import UIKit

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
    }
    
    func bindViewModel() {
        self.viewModel.sendUpdatedMovieData = { [weak self] movieData in
            self?.dataSource?.updateDataSource(data: movieData)
            self?.tableView.reloadData()
        }
        
        self.viewModel.showDetailPage = { [weak self] vc in
            self?.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}


private extension MainPageView {
    
    func loadTableView() {
        tableView.register(.init(nibName: "MovieSummaryCell", bundle: MainPageModuleResources.bundle), forCellReuseIdentifier: "MovieSummaryCell")
        
        dataSource = TVDataSource(data: [])
        dataSource?.outputDelegate = self.viewModel
        tableView.delegate = dataSource
        tableView.dataSource = dataSource
    }
}
