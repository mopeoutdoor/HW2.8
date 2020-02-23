//
//  OrderDetailTableViewController.swift
//  HW2.8
//
//  Created by Lev Litvak on 23.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import UIKit

class OrderDetailTableViewController: UITableViewController {
    
    // MARK: - Public properties
    var order: Order!
    
    // MARK: - Override methods
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        navigationItem.title = order.orderInfo
        
        tableView.reloadData()
    }
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return order.dishes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderDetailCell", for: indexPath)
        
        let dish = order.dishes[indexPath.row]
        cell.textLabel?.text = dish.dishName
        cell.detailTextLabel?.text = dish.dishCost.toString()

        return cell
    }
}
