//
//  TVDataSource.swift
//  MainPageModule
//
//  Created by Said Çankıran on 22.09.2022.
//

import Foundation
import UIKit
import NetworkKit

class TVDataSource: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    var data: [Movie]
    
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
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell clicked.")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
}
