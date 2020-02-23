//
//  OrderTableViewController.swift
//  HW2.8
//
//  Created by Irina Kopchenova on 23.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import UIKit

class OrdersTableViewController: UITableViewController {

    // MARK: - Override methods
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Orders.shared.orderList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderCell", for: indexPath)
        let order = Orders.shared.orderList[indexPath.row]
        
        cell.textLabel?.text = order.orderInfo
        cell.detailTextLabel?.text = order.dishesList
        cell.detailTextLabel?.numberOfLines = 0
        
        return cell
    }
}
