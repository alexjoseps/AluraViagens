//
//  HomeTableViewHeader.swift
//  AluraViagens
//
//  Created by Alex Souza on 03/12/25.
//

import UIKit

class HomeTableViewHeader: UIView {
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var headerLabel: UILabel!

    @IBOutlet weak var bannerView: UIView!
    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var imageView: UIImageView!

    func configuraBackground() {
        headerView.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1)
    }
}
