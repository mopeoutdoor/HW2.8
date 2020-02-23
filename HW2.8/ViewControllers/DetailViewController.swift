//
//  DetailViewController.swift
//  HW2.8
//
//  Created by Irina Kopchenova on 23.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelTextField: UILabel!
    
    var someDish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = someDish.dishName
        imageView.image = UIImage(named: someDish.dishImageName)
        labelTextField.text = someDish.dishDescription
    }
    

    @IBAction func tapButton(_ sender: UIButton) {
        AppController.shared.appendDishesToBasket(someDishes: someDish)

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
