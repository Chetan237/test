//
//  ViewController.swift
//  2210990237_chetan
//
//  Created by Chetan Puri on 23/11/24.
//

import UIKit

class MealTableViewController: UITableViewController {

    // Sample data for the table view
    let meals = ["Breakfast", "Lunch", "Dinner", "Snacks"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Register a basic cell type
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MealCell")
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue a reusable cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath)
        // Configure the cell with data
        cell.textLabel?.text = meals[indexPath.row]
        return cell
    }
}


