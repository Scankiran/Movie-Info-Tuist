//
//  DetailPageView.swift
//  DetailPageModule
//
//  Created by Said Çankıran on 21.09.2022.
//

import UIKit
import NetworkKit
import ExtensionKit

public class DetailPageView: UIViewController {

    public init(movieData: Movie) {
        self.viewModel = DetailPageViewModel(detailPageViewModel: movieData)
        super.init(nibName: "DetailPageView", bundle: DetailPageModuleResources.bundle)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let viewModel: DetailPageViewModel

    @IBOutlet private weak var imageViewMoviePoster: UIImageView!
    @IBOutlet private weak var labelMovieTitle: UILabel!
    @IBOutlet private weak var labelMovieSummary: UILabel!


    public override func viewDidLoad() {
        super.viewDidLoad()
        initializeView()
        // Do any additional setup after loading the view.
    }


    func initializeView() {
        ImageService.shared.loadImage(with: viewModel.posterPath, to: imageViewMoviePoster)
        self.labelMovieTitle.text = viewModel.movieName
        self.labelMovieSummary.text = viewModel.movieOverview
        
        setLayoutParameters()

    }



}

private extension DetailPageView {
    
    func setLayoutParameters() {
        labelMovieSummary.heightAnchor.constraint(
            equalToConstant: viewModel.movieOverview.calculateHeight(
                withConstrainedWidth: labelMovieSummary.bounds.width,
                font: .systemFont(ofSize: 16))).isActive = true
        
        labelMovieTitle.heightAnchor.constraint(
            equalToConstant: viewModel.movieName.calculateHeight(
                withConstrainedWidth: labelMovieTitle.bounds.width,
                font: .systemFont(ofSize: 19))).isActive = true

    }
}
