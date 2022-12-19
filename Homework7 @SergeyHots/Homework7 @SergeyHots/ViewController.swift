//
//  ViewController.swift
//  Homework7 @SergeyHots
//
//  Created by Macbook on 11.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfCities: [String] = ["Ukraine","Turkey","Egypt","Montenegro","Cyprus"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    @IBAction func buttonAdd(_ sender: Any) {
        alertForCities(name: "Citi", placeholder: "Enter the name of the city") { (citi) in
            self.arrayOfCities.append(citi)
            self.tableView.reloadData()
        }
    }
    
    private func alertForCities(name: String, placeholder: String, completionHandler: @escaping (String) -> Void) {
        
        let alert = UIAlertController(title: name, message: nil, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            
            let tfAlert = alert.textFields?.first
            guard let text = tfAlert?.text else { return }
            completionHandler(text)
        }
        
        alert.addTextField { (tf) in
            tf.placeholder = placeholder
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! SimpleTableViewCell
        cell.nameLabel.text = arrayOfCities[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MonthsViewController") as! MonthsViewController
        viewController.index = "\(indexPath.row + 1)"
        viewController.name = arrayOfCities[indexPath.row]
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
