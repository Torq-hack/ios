//
//  CarScanResultViewController.swift
//  Torq
//
//  Created by Jean Paul Marinho on 21/10/18.
//  Copyright © 2018 aKANJ. All rights reserved.
//

import UIKit

class CarScanResultViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    var result: String!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        resultLabel.text = result
    }
}
