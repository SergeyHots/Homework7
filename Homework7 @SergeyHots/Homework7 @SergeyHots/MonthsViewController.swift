//
//  MonthsViewController.swift
//  Homework7 @SergeyHots
//
//  Created by Macbook on 11.11.2022.
//

import UIKit

class MonthsViewController: UIViewController {

    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var index: String? = ""
    var name: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        indexLabel.text = index
        nameLabel.text = name
        
    }
    
}
