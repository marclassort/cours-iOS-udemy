//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Marc Lassort on 11/03/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var numberOfPeople = 0
    var percentage = 0
    var tip = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = tip
        
        settingsLabel.text = "Split between \(numberOfPeople) people, with \(percentage)% tip."

    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
