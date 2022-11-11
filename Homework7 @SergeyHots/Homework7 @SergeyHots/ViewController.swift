//
//  ViewController.swift
//  Homework7 @SergeyHots
//
//  Created by Macbook on 11.11.2022.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var tableView: UITableView!
    
    let arrayOfMonths: [String] = ["January","February","March","April","May","June","July","August","September","October","November","December"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfMonths.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! SimpleTableViewCell
        cell.nameLabel.text = arrayOfMonths[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        viewController.index = "\(indexPath.row + 1)"
        viewController.name = arrayOfMonths[indexPath.row]
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
