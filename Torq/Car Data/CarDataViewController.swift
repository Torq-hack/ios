//
//  CarDataViewController.swift
//  Torq
//
//  Created by Jean Paul Marinho on 20/10/18.
//  Copyright © 2018 aKANJ. All rights reserved.
//

import UIKit

class CarDataViewController: UIViewController {
    
    @IBOutlet weak var carDataCollectionView: UICollectionView!
    @IBOutlet weak var lblTitle: UIButton!
    
    var car: Car?
    
    let categories: [CarCategory] = [
        CarCategory(categoryId: "engine", category: "Motor", image: "carEngine"),
        CarCategory(categoryId: "security", category: "Segurança", image: "seatbelt"),
        CarCategory(categoryId: "visual", category: "Visual", image: "carvisual"),
        CarCategory(categoryId: "gear", category: "Outros", image: "cargear"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.setTitle("\(car?.brand) \(car?.model)", for: UIControl.State.normal)
        
        carDataCollectionView.delegate = self
        carDataCollectionView.dataSource = self
        carDataCollectionView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else {
            return
        }
        
        switch identifier {
        case "segueToCarCategoryDetail":
            (segue.destination as? CarCategoryDetailViewController)?.category = sender as? CarCategory
            
        case "segueToCarPriceHistoryViewController":
            (segue.destination as? CarPriceHistoryViewController)?.car = sender as? Car
        default:
            break
        }
    }
    
    @IBAction func showPriceHistory(_ sender: Any) {
        performSegue(withIdentifier: "segueToCarPriceHistoryViewController", sender: nil)
    }
}

extension CarDataViewController: UICollectionViewDelegate {
    
}

extension CarDataViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let category: CarCategory = categories[indexPath.row]
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCategoryCollectionViewCell", for: indexPath) as? CarCategoryCollectionViewCell {
            cell.lblTitle.text = category.category
            cell.imgcategory.image = UIImage(named: category.image!)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segueToCarCategoryDetail", sender: categories[indexPath.row])
    }
}
