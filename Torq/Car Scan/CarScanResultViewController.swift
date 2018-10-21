//
//  CarScanResultViewController.swift
//  Torq
//
//  Created by Jean Paul Marinho on 21/10/18.
//  Copyright © 2018 aKANJ. All rights reserved.
//

import UIKit

class CarScanResultViewController: UIViewController {

    @IBOutlet var brandLabel: UILabel!
    @IBOutlet var modelLabel: UILabel!
    @IBOutlet var detailLabel: UILabel!
    @IBOutlet var plateLabel: UILabel!
    @IBOutlet var brandImageView: UIImageView!
    @IBOutlet var carImageView: UIImageView!
    var result: String! {
        didSet {
            let resultComponents = result.components(separatedBy: "-")
            brand = resultComponents[0].capitalizingFirstLetter()
            model = resultComponents[1].capitalizingFirstLetter()
            year = resultComponents[2]

        }
    }
    var brand: String!
    var model: String!
    var year: String!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        brandLabel.text = "\(brand!)"
        modelLabel.text = "\(model!)"
        var segment = "SI"
        if brand == "toyota" {
            segment = "XEI"
        }
        detailLabel.text = "\(segment) - \(year!)"
        brandImageView.image = UIImage(named: "\(brand!)Logo")
        carImageView.image = UIImage(named: "\(model!)Profile")
    }
}
