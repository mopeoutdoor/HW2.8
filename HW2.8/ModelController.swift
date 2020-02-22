//
//  ModelController.swift
//  HW2.8
//
//  Created by Dmitriy Butin on 22.02.2020.
//  Copyright © 2020 Mikhail Scherbina. All rights reserved.
//

import Foundation

struct Dish {
    let menuSection: String
    let dishName: String
    let dishCost: Float
    let dishImageName: String
}

extension Dish {
    static func getDishes() -> [Dish] {
        let dishes = [
            Dish(menuSection: "Роллы", dishName: "Филадельфия",
                 dishCost: 390, dishImageName: "Филадельфия"),
            Dish(menuSection: "Роллы", dishName: "Калифорния",
                 dishCost: 350, dishImageName: "Калифорния"),
            Dish(menuSection: "Роллы", dishName: "Унаги-маки",
                 dishCost: 290, dishImageName: "УнагиМаки"),
            Dish(menuSection: "Горячее", dishName: "Шашлык с из окуня",
                 dishCost: 490, dishImageName: "ШашлыкИзОкуня"),
            Dish(menuSection: "Горячее", dishName: "Стейк из лосося",
                 dishCost: 790, dishImageName: "СтейкИзЛосося"),
            Dish(menuSection: "Горячее", dishName: "Утка по-японски",
                 dishCost: 990, dishImageName: "УткаПоЯпонски"),
            Dish(menuSection: "Десерт", dishName: "Чизкейк",
                 dishCost: 330, dishImageName: "Чизкейк")
        ]
        
        return dishes
    }
}
