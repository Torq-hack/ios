//
//  ActivityViewController.swift
//  Torq
//
//  Created by Jean Paul Marinho on 20/10/18.
//  Copyright © 2018 aKANJ. All rights reserved.
//

import UIKit

class ActivityViewController: UITableViewController {

    @IBOutlet weak var btnCarModel: UIButton!
    var car: Car?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let car = self.car {
            btnCarModel.setTitle("\(car.brand) \(car.model)", for: UIControl.State.normal)
        } else {
            btnCarModel.setTitle("Meu Carro", for: UIControl.State.normal)
        }
    }

    @IBAction func changeCar(_ sender: Any) {
       showCarOptions()
    }
    
    func showCarOptions() {
        let alertController = UIAlertController(
            title: "Meus Carros",
            message: nil,
            preferredStyle: UIAlertController.Style.actionSheet)
        
        let car1 = UIAlertAction(title: "Honda Civic", style: UIAlertAction.Style.default) { (action) in
            
        }
        
        let car2 = UIAlertAction(title: "Toyota Corolla", style: UIAlertAction.Style.default) { (action) in
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: UIAlertAction.Style.cancel) { (action) in
            
        }
        
        alertController.addAction(car1)
        alertController.addAction(car2)
        alertController.addAction(cancelAction)
        present(alertController, animated: true) {}
    }
}
