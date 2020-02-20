//
//  SettingsViewController.swift
//  Planets
//
//  Created by Breena Greek on 2/19/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK IBOutlets

    @IBOutlet weak var plutoToggle: UISwitch!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateViews()
    }
    
    // MARK IBActions

    @IBAction func didTogglePluto(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: .shouldShowPlutoKey)
    }
        // User Defaults Dictionary
        /*
         Dictionary [String: Any] (Any being traditional Values)
         [
         "ShouldShowPluto: true
         "FavoriteNumber": 7
         ]
         */
        
        private func updateViews() {
            plutoToggle.isOn = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
        }
    }

