//
//  ImageService.swift
//  NetworkKit
//
//  Created by Said Çankıran on 23.09.2022.
//

import Foundation
import UIKit
import Kingfisher

public class ImageService {

    private let baseImageURLString = "https://image.tmdb.org/t/p/w92"
    
    
    public static let shared = ImageService()
    public init () { }


    public func loadImage(with url: String?, to imageView: UIImageView) {

        guard let urlString = url,
              let url = URL(string: baseImageURLString.appending(urlString)) else {
            return
        }
        imageView.kf.setImage(with: url)
    }
    
}
