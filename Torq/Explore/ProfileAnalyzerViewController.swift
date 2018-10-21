//
//  ProfileAnalyzerViewController.swift
//  Torq
//
//  Created by Jean Paul Marinho on 21/10/18.
//  Copyright © 2018 aKANJ. All rights reserved.
//

import UIKit
import Bubbles
import SpriteKit

class ProfileAnalyzerViewController: UIViewController {

    @IBOutlet var bubblesView: CSBubblesView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        NotificationCenter.default.addObserver(self, selector: #selector(ProfileAnalyzerViewController.bubbleWasSelected), name: NSNotification.Name(rawValue: "BubbleWasSelected"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ProfileAnalyzerViewController.bubbleWasDeselected), name: NSNotification.Name(rawValue: "BubbleWasDeselected"), object: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        bubblesView.dataArray = ["Summer", "Aruba", "Australia", "Austria", "Bahamas", "Barbados",  "Belgium", "Belize",  "Bermuda",  "Brazil",  "Chile", "China", "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Costa Rica", "Cote d'Ivoire", "Croatia (Hrvatska)", "Cuba", "Cyprus", "Dominican Republic", "Egypt", "Faroe Islands", "Fiji",  "France", "Germany", "Greece"]
    }
    
    @IBAction func actionPressed(_ sender: UIButton) {
    }
    
    @objc func bubbleWasSelected(notification: NSNotification) {
        print(notification.object as! String)
    }
    
    @objc func bubbleWasDeselected(notification: NSNotification) {
        print(notification.object as! String)
    }
}
