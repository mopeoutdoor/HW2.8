//
//  File.swift
//  HW2.8
//
//  Created by Lev Litvak on 23.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

struct Order {
    static var currentNumber = 1 // используется для просвоения уникального номера заказам
    
    let number: Int
    let dishes: [Dish]
    let sum: Float
    
    var orderInfo: String {
        return "Заказ № \(self.number) - \(self.sum) руб."
    }
    
    var dishesList: String {
        var result = ""
        
        dishes.forEach { result += "\($0.dishName) - \($0.dishCost) руб.\n" }
        result.removeLast()
        
        return result
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
