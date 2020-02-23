//
//  File.swift
//  HW2.8
//
//  Created by Lev Litvak on 23.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

struct Order {
    static var currentNumber = 1 // используется для присвоения уникального номера заказам
    
    let number: Int
    let dishes: [Dish]
    let sum: Float
    
    var orderInfo: String {
        return "Заказ № \(self.number) - \(self.sum.toString()) руб."
    }
    
    init(dishes: [Dish]) {
        self.dishes = dishes
        
        var orderSum: Float = 0
        dishes.forEach { orderSum += $0.dishCost }
        self.sum = orderSum
        
        self.number = Order.currentNumber
        Order.currentNumber += 1
    }
}
