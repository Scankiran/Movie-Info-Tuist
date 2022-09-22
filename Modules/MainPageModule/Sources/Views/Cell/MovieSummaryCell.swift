//
//  MovieSummaryCell.swift
//  MainPageModule
//
//  Created by Said Çankıran on 22.09.2022.
//

import UIKit
import Kingfisher // Bu burda olmalı mı? Kafa yor.
import NetworkKit

class MovieSummaryCell: UITableViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSummary: UILabel!
    @IBOutlet weak var imageViewPoster: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func initializeView(data: Movie) {
        labelTitle.text = data.title
    }
    
}
