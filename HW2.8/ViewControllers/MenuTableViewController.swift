//
//  MenuTableViewController.swift
//  HW2.8
//
//  Created by Irina Kopchenova on 22.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    let menu = AppController.shared.menu()
    let sectionDic = AppController.shared.sectionsDic()
        
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return menu.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionName = sectionDic[section]!
        return menu[sectionName]!.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath)
        let dishesDic = AppController.shared.dishesDic(sectionName: sectionDic[indexPath.section]!)
        let dish = dishesDic[indexPath.row]!
        cell.textLabel?.text = dish.dishName
        cell.detailTextLabel?.text = String(dish.dishCost)
        cell.imageView?.image = UIImage(named: dish.dishImageName)
 
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionDic[section]!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dishesDic = AppController.shared.dishesDic(sectionName: sectionDic[indexPath.section]!)
        let selectedDishes = dishesDic[indexPath.row]!
        performSegue(withIdentifier: "ToDetail", sender: selectedDishes)
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as? DetailViewController
        destinationVC?.someDish = sender as? Dish
    }
    
    @IBAction func unwindToMenu(unwindSegue: UIStoryboardSegue) {
    }

}
