//
//  BasketTableViewController.swift
//  HW2.8
//
//  Created by Dmitriy Butin on 23.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import UIKit

class BasketTableViewController: UITableViewController {
    
    // MARK: - Override methods
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppController.shared.basket.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasketCell", for: indexPath)
        let dish = AppController.shared.basket[indexPath.row]
        
        cell.textLabel?.text = dish.dishName
        cell.detailTextLabel?.text = dish.dishCost.toString()
        
        return cell
    }
    
    // MARK: - IB Actions
    @IBAction func doneButtonPressed(_ sender: Any) {
        guard AppController.shared.basket.count > 0 else {
            showAlert(title: "Ошибка", message: "Сначала нужно наполнить корзину")
            return
        }
        
        let basketCost = AppController.shared.basketCost.toString()
        
        showQuestion(title: "Новый заказ",
                     message: "Создать заказ на сумму \(basketCost) руб?") { handler in
                        let newOrder = Order(dishes: AppController.shared.basket)
                        
                        Orders.shared.appendNewOrder(order: newOrder)
                        AppController.shared.clearBasket()
                        
                        self.tableView.reloadData()
                        
                        self.showAlert(
                            title: "Заказ № \(newOrder.number)",
                            message: "Заказ успешно создан и доступен на вкладке \"Заказы\"")
        }
    }
    
    @IBAction func deleteButtonPressed(_ sender: Any) {
        guard AppController.shared.basket.count > 0 else { return }
        
        showQuestion(title: "Очистить корзину?",
                     message: "Вы уверены, что хотите полностью очистить корзину?") { handler in
                        AppController.shared.clearBasket()
                        self.tableView.reloadData()
        }
    }
}
