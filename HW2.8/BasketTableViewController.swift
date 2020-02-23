//
//  BasketTableViewController.swift
//  HW2.8
//
//  Created by Dmitriy Butin on 23.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import UIKit

class BasketTableViewController: UITableViewController {
    
    var backet: [Dish] = []
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        //print ("Didload \(AppController.shared.basket)")
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.backet = AppController.shared.basket
        
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return backet.count
    }

      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "BasketCell", for: indexPath)
        cell.textLabel?.text = backet[indexPath.row].dishName
        cell.detailTextLabel?.text = String(backet[indexPath.row].dishCost)
    
           return cell
       }

}
